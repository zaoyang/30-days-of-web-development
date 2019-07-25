CORRECT="crab"
echo "What animal has teeth in their stomach?"
read answer
echo "Really, that's your answer, you sure?"
read remark
if [ "$answer" = "$CORRECT" ]; then
    "well done!!!! I'm seriously impressed 👏  👏  👏"
else
    echo "The answer is a crab! Who knew right? 🦀  🦷  🤷🏻‍♀️"
fi