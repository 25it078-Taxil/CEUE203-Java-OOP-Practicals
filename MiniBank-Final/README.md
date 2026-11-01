# MiniBank — Final Integrated Project (Practical 1–14)

Java 17+ console banking application. Includes account subclasses/polymorphism, encapsulation, annotations + reflection validation, custom checked exceptions, synchronized balances, thread pool support, serialization persistence, NIO transaction log/report, ConcurrentHashMap-backed generic repository, and a menu-driven service layer.

## Run (Windows)
1. Install JDK 17 or newer and ensure `java` and `javac` are on PATH.
2. Open Command Prompt in this folder.
3. Build: `build.bat`
4. Run: `run.bat`
5. Tests: `test.bat`

## Run (Linux/macOS/Git Bash)
`./build.sh` then `./run.sh`; run smoke checks with `./test.sh`.

## Persistence
Accounts are saved to `data/accounts.ser` when you choose Exit. Transaction events append to `data/transactions.log`; the report is written to `data/report.txt`. Keep the data folder with the application to retain records.

## Notes
- Uses only the JDK; no network or Maven download is required.
- `SmokeTests` is a dependency-free test runner because the practical sheet requests JUnit 5 but does not provide a dependency/build configuration. It verifies deposit, withdrawal, insufficient-funds handling, transfer and equality.
- Account ids are generated at runtime. Fixed-deposit accounts are locked against withdrawal as specified in Practical 5.
- The final integrated project consolidates MiniBank features from Practical 1–14; Part A practice programs remain separately runnable in each practical folder.
