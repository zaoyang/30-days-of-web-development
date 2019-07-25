# Answer Regex Variables
correct1 = "(?<!\d)(1)(?!\d)"
correct2 = "(?<!\d)(3)(?!\d)"
correct3 = "(?<!\d)(3)(?!\d)"
correct4 = "(?<!\d)(3)(?!\d)"

echo "Which of the following are an example of a Data file?  For your answer, just return the number(s)."
printf "%s\t%s\n" "1. solitaire.exe" "2. command.cmd" "3. cutekitten.png" "4. quiz.sh"
read answer1
question1() {
    if [ "$answer1" = "$correct1" ]; then
        echo "well done!!!! I'm seriously impressed 👏  👏  👏"
        return
    else
        echo "The answer is a crab! Who knew right? 🦀  🦷  🤷🏻‍♀️"
        return
    fi
}
question1

# Question 2
echo "What are the two types of File Types?  For your answer, just return the number(s)."
printf "%s\t%s\n" "1. bathtubs" "2. 🏴‍☠️" "3. Data Files" "4. Executable Files"
read answer2
question2() {
    if [ "$answer2" = "$correct2" ]; then
        echo "well done!!!! I'm seriously impressed 👏  👏  👏"
        return
    else
        echo "The answer is a crab! Who knew right? 🦀  🦷  🤷🏻‍♀️"
        return
    fi
}
question2

# Question 3
echo "What happens when you open an Executable file type?  For your answer, just return the number(s)."
printf "%s\t%s\n" "1. bathtubs" "2. 💥" "3. Execute something" "4. Run a program"
read answer3
question3() {
    if [ "$answer3" = "$correct3" ]; then
        echo "well done!!!! I'm seriously impressed 👏  👏  👏"
        return
    else
        echo "The answer is a crab! Who knew right? 🦀  🦷  🤷🏻‍♀️"
        return
    fi
}
question3

# Question 4
echo "Last Question: Where was the captain sailing?  For your answer, just return the number(s)."
printf "%s\t%s\n" "1. bathtub 🛀" "2. Pacific Ocean" "3. Strait of Messina" "4. a puddle"
read answer4
question4() {
    if [ "$answer4" = "$correct4" ]; then
        echo "well done!!!! I'm seriously impressed 👏  👏  👏"
        return
    else
        echo "The answer is a crab! Who knew right? 🦀  🦷  🤷🏻‍♀️"
        return
    fi
}
question4

echo "Nice work.  Quiz done.  You're now that much smarter!"