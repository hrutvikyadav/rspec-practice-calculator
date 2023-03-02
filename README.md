# Rspec tests

## 3 Stages of TDD

1. Turn requirements of a certain function into test cases\
These will obviously fail because actual code is not written yet

2. Write code to pass these tests then we can move on to refactoring\
This way, as new features are added, and tests for all functions run in background, if adding/refactoring a new feature is breaking existing code, we will know immediately

## RSpec

1. What is it\
A language specified to test `ruby` code

2. How to install

    `gem install rspec`\
    check version with `rspec -v` and help with `--help`\
    cd into a dir you need to configure rspec in
    then run `rspec --init` to generat needed files: `.rspec` and `spec/spec_helper.rb`
    > the `spec` dir is where we add all tests. optionally add a `lib` in project root to store your ruby files

3. Basic syntax

    Use `describe` to define a collection of tests and pass a Class or string arg to name the test suite and a block containing code to test

    can be nested

    ```ruby
    # describe test suite for a calculator class
    describe Calculator do
    ...
    end
    ```

    `it` used to define individual test, it also accepts a string and a block of code in which expectations from method under test are written

    ```ruby
    # describe test suite for a calculator class
    describe Calculator do
        describe "#add" do
            it "returns sum of two numbers" do
                calc = Calculator.new
                expect(calc.add(20, 40)).to eql(60)
            end
        end
    end
    ```

    here we expect a method under test .to eql or .to_not eql (rspec matchers) some value

## .rspec

rails reads `.rspec` file for command line configurations\
`--format documentation` is a useful flag. we can _add it so `.rspec`_ can run tests with the flag

___
