[![Work in Repl.it](https://classroom.github.com/assets/work-in-replit-14baed9a392b3a25080506f3b7b6d57f295ec2978f6f33ec97e36a161684cbe9.svg)](https://classroom.github.com/online_ide?assignment_repo_id=4204457&assignment_repo_type=AssignmentRepo)
# Assignment 1

## Objective
Upon completing this assignment, you should be able to implement a simple class, as well as gain a better understanding of use of classes and objects.

## Task
You are to write a class called `Binomial` that will allow creation and handling of [univariate](https://en.wikipedia.org/wiki/Univariate) [binomial](https://en.wikipedia.org/wiki/Binomial_(polynomial)) [polynomials](https://en.wikipedia.org/wiki/Polynomial), as described below.

### Binomial Description

Each binomial object has following properties:

- Each binomial determined two coefficients and two variable exponents.
- Binomial power is always positive.
- Binomial power is always integer.
- Binomials cannot be added if they have different powers

### Class Details

1. A `Binomial` class definition must be placed in the file `binomial.h`, and the method implementations must be located in file `binomial.cpp`. Specify an appropriate guard and a header reference in the above files.

2. The single constructor for the `Binomial` class should have 4 parameters: two floating point coefficient values (optional, with a default value of `1.0`); and two integer power values (optional, with a default value of `1`). If the power value is less then 1, set the power to 1. You need to provide define corresponding members to make the class functional and kept track of the binomial parameters.

3. There should be member functions `GetCoefficient`, and `GetPower`, which will return the corresponding binomial's coefficient value, and binomial's power value, respectively.
    - Both methods must accept, as a parameter, an index of the term. The first term has index `1`, the second term has index `2`. If any other index value is specified the methods should return negative one, value, `-1`.
    - The `GetPower` method should return an integer value of the corresponding term exponent.
    - The `GetCoefficient` function should return a floating point value of the corresponding term coefficient.

4. There should be member functions `SetPower`, which will set the corresponding binomial's exponent to the arbitrary positive value. If the exponent parameter is not positive then set the power to the default value `1`.
    - The method must accept two parameters: an index of the term and the term's exponent value. The first term has index `1`, the second term has index `2`. If any other index value is specified, the methods should not modify the power value of any term exponent.
    - The method returns `0` if the term exponent is successfully set, otherwise return `-1`

5. There should be member function `Add`, which adds the one binomial to the other. The parameter of this member function need to be a constant reference to the other binomial object. The result of the addition is saved in the caller object.
    - Method must return value `0` if operation is successfully terminated, otherwise the method returns `-1`.
    - The binomial can only be added if they have the same power, otherwise the method returns `-1`.

6. There should be two member functions `Multiply` (overrides), which each allow to multiply a binomial to a number and to a [monomial](https://en.wikipedia.org/wiki/Monomial).
    - The first `Multiply` member function need to accept floating point parameter that is used to perform multiplication of the real number on the the binomial object.
    - The second `Multiply` member function need to accept a two parameters: a floating point parameter - the monomial term coefficient value, and an integer parameter - the monomial term power value.
    - The result of the multiplication is saved in the caller object.

7. Your class declaration and definition files must work the provided test driver in the `main.cpp` file. Most questions about the required behavior of the class can be determined by carefully examining my test driver program and the sample execution. Your class must meet the requirements listed above in the specification.

## Test

Press **Run** button to execute and test your program.

- Or run `make test` command in the command line to verify the correctness of your program.

## Submission

- Commit & push all changes that to the corresponding assignment repository on GitHub, using the **Repl.it** interface - **Version control** tab.
  - Make sure that you committed changes to following files:
    - `binomial.h`
    - `binomial.cpp`
- Submit the link of the assignment GitHub repository in the corresponding assignment submission the Blackboard.
  - Open corresponding assignment on the Blackboard
  - In **Assignment Submission** section, press **Write Submission** button
  - Paste your assignment repository link in the **Text Submission** box
  - Submit the assignment

### Before You Submit

You are required to test that your submission works properly before submission. Make sure that your program compiles without errors. Once you have verified that the submission is correct, you can submit your work.

### Coding Style

In any programming project, matching the existing coding style is important. Having different coding styles intermixed leads to confusion and bugs. Students are required to follow the particular existing coding style that maintains the indentation style in `.cpp` and `.h` files using spaces, not tabs.

In particular, pay close attention to function declarations and how the function name begins the line after the function return type. For helper functions which are limited in scope to a specific file, you must declare the function as `static` in the same file in which it is used.

*Indentation*: The indentation style for your work have to be 4 spaces. Many students are taught to use tabs for indentation, which can make code very hard to read, especially when there are several levels of indentation.

For additional information of C++ coding style see [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html).

