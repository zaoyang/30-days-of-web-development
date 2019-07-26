# Answer Regex Variables
echo " ⓵  Which of the following is an example of a Data File?  For your answer, enter the number(s)."
printf "%s\t%s\n" "1. solitaire.exe" "2. command.cmd" "3. cutekitten.png" "4. quiz.sh"

read answer1
question1() {
    if [[ $answer1 =~ ([34].*){2,} ]]; then
        printf '%s\n'
        printf '%s\n' "Well done, you're correct! .cmd or .exe are executable file types, thus they are NOT Data Files.👏 "
        printf '%s\n'
        return
    else
        printf '%s\n'
        printf '%s\n' "oish, nope 🤨  Command (.cmd) and Executable (.exe) execute a program when they are opened thus they are not Data Files. Pngs (.png) or Shell Scripts (.sh) do not execute anything, thus they are Data File types."
        printf '%s\n'
        return
    fi
}
question1

# Question 2
printf '%s\n' "Hit Enter for the Next Question"
printf '%s\n'
read
echo "⓶  Name the two File Types?"
printf "%s\t%s\n" "1. bathtubs" "2. Internet Explorer" "3. Data Files" "4. Executable Files"
read answer2
question2() {
    if [[ $answer2 =~ ([34].*){2,} ]]; then
        echo "well done!!!! 👏"
        return
    else
        echo "uh... not sure what to say. Seriously, this one was easy.  Typo?"
        return
    fi
}
question2

# Question 3
printf '%s\n' "Hit Enter for the Next Question"
printf '%s\n'
read
echo "③  What happens when you open an Executable File Type?"
printf "%s\t%s\n" "1. Computer shuts down" "2. An angel gets its wings" "3. Execute something" "4. Your operating system creates a kernel"
read answer3
question3() {
    if [[ $answer3 =~ [3] ]]; then
        echo "Nice.  I tried to throw you off with #4, but you didn't fall for it."
        return
    else
        echo "Did you fall for #4? That was a bit tricky, but the kernel is apart of the operating system, and #4 has nothing to do with opening an Executable File Type. The answer was #3: execute something."
        return
    fi
}
question3

# Question 4
printf '%s\n' "Hit Enter for the Next Question"
printf '%s\n'
read
echo "Last Question: Fill in the blank. The File System is your terminals equivalent of the captain's _______."
printf "%s\t%s\n" "1. bathtub 🛀" "2. Pacific Ocean" "3. Strait of Messina" "4. a puddle"
read answer4
question4() {
    if [[ $answer4 =~ [1] ]]; then
        echo "Well played.  You are correct."
        return
    else
        echo "No, no, no.  BATHTUB is the correct answer."
        return
    fi
}
question4

echo "Quiz complete!"