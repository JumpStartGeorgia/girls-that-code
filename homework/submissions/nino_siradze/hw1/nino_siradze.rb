# Homework Assignment #1

poem = "
  Jack and Jill went up the hill
  To fetch a pail of water.
  Jack fell down and broke his crown,
  And Jill came tumbling after.
  
  "

new_poem = poem.lines.to_a.reverse.join

puts new_poem;

########################
## Feedback from Jason
## Good job!
## A couple notes:
## - you do not need .to_a - this was necessary in an older version of ruby but is not necessary after ruby 2.0
