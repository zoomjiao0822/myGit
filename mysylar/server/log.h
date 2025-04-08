/*
 * @Author: JHB
 * @Date: 2025-03-25 09:17:09
 */
#ifndef _SYLAR_LOG_H_ 
#define _SYLAR_LOG_H_

#include <string>
#include <stdint.h>
#include <memory>
#include <list>
#include <sstream>
#include <fstream>
#include <iostream>
#include <vector>

namespace sylar {
class Logger;
//日志事件
class LogEvent{
public:
    typedef std::shared_ptr<LogEvent> ptr;
    LogEvent(const char* file, int32_t line, uint32_t elapse ,uint32_t threadId, 
        uint32_t fiberId, uint64_t time);
    const char* getFile() const {return m_file;}
    int32_t getLine() const {return m_line;}
    uint32_t getElapse() const { return m_elapse;}
    uint32_t getThread() const { return m_threadId;}
    uint32_t getFiberId() const { return m_fiberId;}
    uint64_t getTime() const { return m_time;}
    const std::string getContent() const { return m_content.str();}

    std::stringstream& getSS() {return m_content;}

private:
    const char* m_file = nullptr;   //文件名
    int32_t m_line = 0;             //行号
    uint32_t m_elapse = 0;          //程序启动到现在的毫秒数
    uint32_t m_threadId = 0;          //线程 ID
    uint32_t m_fiberId = 0;         //协程Id
    uint64_t m_time = 0;            //时间戳
    std::stringstream m_content;
};

//日志级别
class LogLevel{
public:
    enum Level{
        UNKNOW = 0, 
        DEBUG = 1,
        INFO = 2,
        WARN = 3,
        ERROR = 4,
        FATAL = 5 
    };

    static const char* ToString(LogLevel::Level level);

};

//日志格式
class LogFormatter {
public:
    typedef std::shared_ptr<LogFormatter> ptr;
    LogFormatter(const std::string& pattern);
    std::string format(std::shared_ptr<Logger> logger, LogLevel::Level level, LogEvent::ptr event);
public:
    class FormatItem {
    public: 
        typedef std::shared_ptr<FormatItem> ptr;
        virtual void format(std::ostream& os, std::shared_ptr<Logger> logger, LogLevel::Level level, LogEvent::ptr event) = 0;
        virtual ~FormatItem() = default;
    };
    void init();
private:
    std::vector<FormatItem::ptr> m_items;
    std::string m_pattern;
};

//日志输出地
class LogAppender {
public:
    typedef std::shared_ptr<LogAppender> ptr;
    virtual ~LogAppender() = default;

    virtual void log(std::shared_ptr<Logger> Logger, LogLevel::Level level, LogEvent::ptr event) = 0;
    void setFormatter(LogFormatter::ptr val) { m_formatter = val; }
    LogFormatter::ptr getFormatter() const { return m_formatter; }
protected:
    LogLevel::Level m_level;
    LogFormatter::ptr m_formatter;

};


//日志器
class Logger : public std::enable_shared_from_this<Logger> {
public:
    typedef std::shared_ptr<Logger> ptr;

    Logger(const std::string& name = "root");
    void log(LogLevel::Level level, LogEvent::ptr& event);

    void debug(LogEvent::ptr event);
    void info(LogEvent::ptr event);
    void warn(LogEvent::ptr event);
    void error(LogEvent::ptr event);
    void fatal(LogEvent::ptr event);

    void addAppender(LogAppender::ptr appender);
    void delAppender(LogAppender::ptr appender);
    LogLevel::Level getLevel() const { return m_level; }
    void setLevel(LogLevel::Level val) { m_level = val; }

    const std::string getName() const {return m_name;};
private:
    std::string m_name;
    LogLevel::Level m_level;
    std::list<LogAppender::ptr> m_appenders;
    LogFormatter::ptr m_formatter;
};

//控制台输出器
class StdoutLogAppender : public LogAppender {
public:
    typedef std::shared_ptr<StdoutLogAppender> ptr;
    void log(std::shared_ptr<Logger> Logger, LogLevel::Level level, LogEvent::ptr event) override;
};

//文件输出器
class FileLogAppender : public LogAppender {
public:
    typedef std::shared_ptr<FileLogAppender> ptr;
    FileLogAppender(const std::string& fliename);
    void log(std::shared_ptr<Logger> Logger, LogLevel::Level level, LogEvent::ptr event) override;
    //重新打开文件，打开成功返回ture；
    bool reopen();

private:
    std::string m_filename;
    std::ofstream m_filestream;
};

}


#endif