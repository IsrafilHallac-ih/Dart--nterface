class CustomerManager implements ICustomerManager {
  @override
  void Save(ILogger logger) {
    print("Müsteri Kaydedildi...");
    logger.Log("Log Datası");
  }
}

class ICustomerManager {
  void Save(ILogger logger) {}
}

class ILogger {
  void Log(String message) {}
}

class EmailLogger implements ILogger {
  @override
  void Log(String message) {
    print("LOGGED TO EMAİL...:" + message);
  }
}

class DatabaseLogger implements ILogger {
  @override
  void Log(String message) {
    print("LOGGED TO DATABASE...:" + message);
  }
}

class FileLogger implements ILogger {
  @override
  void Log(String message) {
    print("LOGGED TO FİLE...:" + message);
  }
}

void main() {
  CustomerManager customerManager = new CustomerManager();
  customerManager.Save(new FileLogger());
}
