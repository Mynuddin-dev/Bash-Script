<p align="center">
  <h2 align="center">👽 Bash-Script 🖥️</h2> 
  
</p>

Udemy Course : [Bash Mastery: The Complete Guide to Bash Shell Scripting](https://www.udemy.com/course/bash-mastery/?src=sac&kw=Master+bash)

**Section 1 : How to Build a Bash Script**
---
- Explain the difference between the shell and a scripts
- Indentify the 3 components of a bash scripts
- Use in-line comment , Multiline comment and the 5 professional components to your scripts
- Set secure permission
- Add scripts to your path
- Variable abd shell expensions
  - Variabele Allow us to store useful data under convenient names
  - Shell expansion are very powerful feature that allow us to retrive data process command output and perform calculations

- Three types of shell parameter 
  - Variables : a parameter whose values you can manually change
  - Positional parameters
  - Special parameters

**Section 2: Variables and Shell Expansions**
---
- Variable Praactice : Create user-define variables, store data in them, and retrieve that data using parameter expansion.
- Shell Variabeles : Understand the purpose of common shell variables.
- Command substitution : To use the output of one command in another command, or to save the result of a command in a variable.
- Parameter expansion trick : Use advance parameter expansion syntax to modify the case of parameter values,calculate their length, and grab particular slices of their character.
- Arithmetic expansion : Use arithmetic expansion.
- Arithmetic bc(Basic calculations) : BC command to perform mathematical expressions within the bash scripts.
- Tilde : Use tilde expansion and brace expansion to make the work on the command line more convenient.
- Brace expansion : A way of automatically generating text according to a certain pattern.

**Section 3: How Bash Processes Command Lines**
- Step 1: Tokenization
- Step 2: Command Identification
	- Simple command
	- Compound command
- Step 3: Expansion
	- Stage 01: Brace Expansion
	- Stage 02:
		 - Parameter expansion
		 - Arithmetic expansion
		 - Command substitution
		 - Tilde expansion
	- Stage 03: Word Splitting
	- Stage 04: Globbing
- Step 4:Quote Removal
- Step 5:Redirection
- Step 6:Execute

