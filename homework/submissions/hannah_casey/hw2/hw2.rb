# Homework Assignment #2
# - Playing with strings and numbers

##################
#### IMPORTANT: after each step, use a puts statement to write out the variable(s) that you just created, like:
#### puts "new_poem = #{new_poem}"
#### 
#### It will also be good to use a puts statement as a separator between each step, like:
#### puts "------------------"
#### puts "----- Step 3 -----"
#### puts "------------------"
####
#### These are not required, but it does help make it easier to look at your output and know what your are looking at.
##################

###
# 1. create a hw2 folder in your submissions folder and a file called firstname_lastname.rb
#  - Open a terminal.
#  - Change your directory to your OWN homework directory for your OWN 
#    submissions:
#
# /girls-that-code/homework/submissions/your_name/
#
#  - Create a new directory on your Desktop called 'hw2'.
#  - Change your directory to the newly created 'hw2'.
#  - Open your text editor. Create a new file and save it in the newly created
#    directory, 'hw2'. Call it 'firstname_lastname.rb' (where you use your
#    first and last name in the filename).
#
# 2. Just like in hw1, create a variable called 'poem' and set it equal to the following:
#  Jack and Jill went up the hill
#  To fetch a pail of water.
#  Jack fell down and broke his crown,
#  And Jill came tumbling after.
#
# 3. Create a variable called 'new_poem' and set it equal to the following operations on 'poem' done in one line of code (chaining)
#   - Substitute all cases of 'Jill' for 'Nino and Tako'
#   - Substitute all cases of 'Jack' for 'Giorgi'
#
# 4. Add the word 'borjomi' before the word water in 'new_poem'
#   - create variable called 'index_water' and set it equal the index of 'water' in 'new_poem'
#   - now, insert the word 'borjomi' in 'new_poem' at the index of 'index_water '
# 
# 5. Perform the following calculations:
#### This step includes using a method that we have not talked about yet.
#### Please go to the String API page to learn how to use this method
#### Part of this exercise is to get you comfortable with using the Ruby API :)
#   - create variable called 'length_poem' and set it equal to the length of variable poem
#   - create variable called 'count_a' and set it equal to the count of the letter 'a' in new_poem (look at Ruby String api for how count works)
#   - create variable called 'count_g' and set it equal to the count of the letter 'g' in new_poem (look at Ruby String api for how count works)
#   - create variable called 'calc' and set it equal to count_a minus count_g times 5
#   - create variable called 'calc_float' and set it equal to calc convereted to float
#
# 6. Bonus Question!
#    This is an extra question to challenge you and see if you can put everything you know together.
#    You are not required to do this question. But you should at least try. :)
#   - Do Step 3 again, but instead of saving the output to a new variable, save the output into 'poem'
#     - do not do: poem = poem.xxx
#     - look at the class4 notes to see how you can do this by only adding one character
#   - Now divide the length of 'poem' by the total number of spaces (' ') in 'poem', returning a float that is rounded to 5 decimal places
###

# If you get stuck, don't worry. Try to work through it step-by-step. 
# If you still can't figure out the solution, post a question in the 
# girls-that-code repo issues:
#
# https://github.com/JumpStartGeorgia/girls-that-code/issues
#
# When you are done, add your file to your the git repository.
# Then commit your changes with a relevant message.
# Pull any new changes from the git repo first.
# Then push your changes to the repo.
