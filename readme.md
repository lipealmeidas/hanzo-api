# 🛠️ API Test Automation Project

## 📝 Project Description

This project was developed to perform API test automation using **Robot Framework**. The goal is to validate the behavior of a RESTful API by performing tests such as response status code validation, user count, and verifying the JSON response structure.


https://github.com/user-attachments/assets/bc217b8d-6a43-4d0b-846a-c901486fc3ad


## 🧰 Technologies Used

- **🖥️ Robot Framework**: Test automation framework.
- **📡 RequestsLibrary**: Robot Framework library for making HTTP requests.
- **🌐 SeleniumLibrary**: Robot Framework library for browser automation.
- **🐍 Python**: Programming language used to develop the solutions.

## 🗂️ Project Structure

```bash
📁 HANZO-API/
│
├── 📂 config/
│   └── 📄 package.resource          # Library and variable mapping file.
│
├── 📂 resources/
│   └── 📄 get_keywords.resource     # File containing the test keywords.
│   └── 📄 requests_actions.resource # File containing request actions.
│
├── 📂 results/
│   └── 📝 (test results)            # Folder where test reports are stored.
│
├── 📂 tests/
│   └── 📝 get.robot                 # Main file for test scenarios.
│
└── 📄 requirements.txt              # File with project dependencies.
```

## ▶️ How to Run the Project

1. **📦 Install Dependencies**: Make sure the dependencies are installed using the following command:

   ```bash
   pip install -r requirements.txt
   ```

2. **🚀 Run the Tests**: To run the tests, navigate to the `tests` directory and run the command:

   ```bash
   robot -d /results ./tests/get.robot
   ```

3. **📊 Check the Results**: After the tests are executed, reports will be generated in the `results` folder, where you can view detailed results for each test.

## 🔍 Implemented Test Scenarios

### ✅ Validate Response Status and User Data
- **Description**: Checking the response's status code and verifying the accuracy of the returned user data.
- **Tested Endpoint**: `/users`

```robot
Scenario: Validate Response Status and User Data
    Given I Send A GET Users Request
    Then Validate User Data
```

## 💡 Final Considerations

This project was developed with the intention of ensuring the quality and proper functioning of the tested API, serving as a practical example of RESTful API test automation. Feel free to adjust and expand the tests as needed.

