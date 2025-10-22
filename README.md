 # 🧩 Clings — Interactive C Learning Exercises

 [![Language](https://img.shields.io/badge/language-C-blue?style=for-the-badge&logo=c)](#)
 [![Shell Script](https://img.shields.io/badge/scripts-bash-green?style=for-the-badge&logo=gnubash)](#)
 [![Build Status](https://img.shields.io/badge/tests-passing-brightgreen?style=for-the-badge)](#)
 [![License](https://img.shields.io/badge/license-MIT-yellow?style=for-the-badge)](#)

 **Clings** is a lightweight, interactive playground for learning **C programming**.  
 It provides small, testable exercises and an interactive Bash-based environment — similar to [Rustlings](https://github.com/rust-lang/rustlings), but for **C**.

 ---

 ## 🧠 Overview

 Clings is designed to make learning C more engaging and practical.  
 Each exercise focuses on a specific programming concept, and you can **check**, **reset**, or **get hints** interactively.

 💡 *Think of it as your terminal-based C tutor!*

 ---

 ## 📦 Project Structure

 ```
 CLINGS/
 ├── exercises/          # C source files (one per exercise)
 │   ├── ex01_hello.c
 │   ├── ex02_greeting.c
 │   ├── ex03_sum.c
 │   ├── ex04_calculator.c
 │   └── ex05_temperature.c
 │
 ├── tests/              # Shell scripts to test each exercise
 │   ├── test_ex01.sh
 │   ├── test_ex02.sh
 │   ├── test_ex03.sh
 │   ├── test_ex04.sh
 │   └── test_ex05.sh
 │
 ├── run.sh              # Interactive exercise runner
 └── README.md           # Project documentation
 ```

 ---

 ## ⚙️ Installation

 ### 1. Clone this repository
 ```bash
 git clone https://github.com/<your-username>/clings.git
 cd clings
 ```

 ### 2. Make the main script executable
 ```bash
 chmod +x run.sh
 ```

 ### 3. Check your environment
 You’ll need:
 - **GCC** — for compiling C files  
 - **Bash** — for running the interactive interface  
 - (Optional) **Git** — for resetting exercises  

 Verify your setup:
 ```bash
 gcc --version
 bash --version
 git --version
 ```

 ---

 ## 🚀 Run the Interactive Menu

 Start learning by running:
 ```bash
 bash run.sh
 ```

 You’ll see something like this:

 ```
 Progress: [#########>----------------------------]  2/5
 Current exercise: exercises/ex02_greeting.c

 h:hint / l:list / c:check / n:next / p:prev / x:reset / q:quit
 ```

 ---

 ## 🧩 Menu Options

 | Key | Action | Description |
 |-----|---------|-------------|
 | **h** | hint | Show the “Goal” comment from the current C file |
 | **l** | list | Display all available exercises |
 | **c** | check | Compile and test the current exercise |
 | **n** | next | Go to the next exercise |
 | **p** | prev | Go to the previous exercise |
 | **x** | reset | Reset the exercise file to its original Git version |
 | **q** | quit | Exit the program |

 ---

 ## 🧠 Example Workflow

 1. Launch the tool:
    ```bash
    bash run.sh
    ```

 2. Press **h** to get a hint:
    ```
    💡 Hint for exercises/ex03_sum.c
      Goal: Write a program that takes two integers and prints their sum.
    ```

 3. Edit `exercises/ex03_sum.c` using your favorite editor:
    ```bash
    nano exercises/ex03_sum.c
    ```

 4. When done, press **c** to check your solution:
    ```
    ✅ ex03_sum.c passed all tests!
    ```

 5. Move to the next exercise with **n** and keep practicing!

 ---

 ## 🧪 Testing System

 Each file inside `tests/` is a Bash test script corresponding to one exercise.  
 It automatically:
 1. Compiles the `.c` file using `gcc`
 2. Runs it with predefined input
 3. Compares the output to expected results
 4. Prints success/failure messages

 Example:
 ```bash
 bash tests/test_ex04.sh
 ```

 Output:
 ```
 ✅ ex04_calculator.c passed all test cases!
 ```

 ---

 ## 🔁 Resetting Exercises

 If something goes wrong or you want to start fresh, press **x** in the menu.

 This runs:
 ```bash
 git checkout -- exercises/ex03_sum.c
 ```

 > ⚠️ Works only if your exercises are tracked in Git and committed.

 ---

 ## 💡 Tips for Learning

 - Each C file starts with a **Goal:** section describing the task.  
 - Read the hint before peeking at the solution — it’s designed to guide your thinking.  
 - Try modifying and re-running tests to explore C behavior.  
 - Run `list` (press **l**) to see all exercises and track your progress.

 ---

 ## 🏗️ Roadmap

 | Feature | Status |
 |----------|---------|
 | Interactive Bash-based CLI | ✅ Done |
 | Progress bar tracking | ✅ Done |
 | Hint and reset functionality | ✅ Done |
 | Colorized terminal output | 🔜 Planned |
 | Difficulty levels | 🔜 Planned |
 | Makefile automation | 🔜 Planned |
 | CI/CD test integration (GitHub Actions) | 🔜 Planned |

 ---

 ## 🧰 Optional: Using Makefile (future support)

 To make things even easier, a simple `Makefile` could let you run:
 ```bash
 make run     # Start interactive menu
 make test    # Run all test scripts
 make clean   # Remove compiled binaries
 ```
 *(You can add this feature later.)*

 ---

 ## 🖼️ Example Screenshot

 ```
 Progress: [###########################>------------]  4/5
 Current exercise: exercises/ex05_temperature.c

 h:hint / l:list / c:check / n:next / p:prev / x:reset / q:quit
 💡 Hint for exercises/ex05_temperature.c
   Goal: Write a program that converts Celsius to Fahrenheit and vice versa.
 ```

 ---

 ## 👤 Author

 **SherMuhammad**  
 📧 email@example.com  
 💻 [github.com/codebysher](https://github.com/codebysher)

 > Feel free to fork, star ⭐, and contribute new exercises!

 ---

 ## 📜 License

 This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.  
 You can freely use, modify, and distribute it for educational purposes.

 ---

 > 🧠 *“Practice doesn’t make perfect — consistent practice makes progress.”*
