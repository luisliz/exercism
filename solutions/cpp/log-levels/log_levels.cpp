#include <string>

namespace log_line {
    std::string message(std::string line) {
        int label_end = line.find("]: ");
        std::string message = line.substr(label_end+3, line.length());
        return message;
    }
    
    std::string log_level(std::string line) {
        // [Error]: Invalid operation 
        int label_start= line.find("[")+1;
        int label_end= line.find("]: ")-1;

        std::string level = line.substr(label_start, label_end);
        return level;
    }
    
    std::string reformat(std::string line) {
        return message(line) + " ("+log_level(line)+")";
    }
}  // namespace log_line
