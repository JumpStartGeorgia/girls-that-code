#homework 1
  
poem=%Q{Jack and Jill went up the hill
To fetch a pail of water.
Jack fell down and broke his crown,
And Jill came tumbling after.
}



new_poem=poem.lines.to_a.reverse.join



puts new_poem

########################
## Feedback from Jason
## Good job!
## A couple notes:
## - you do not need .to_a - this was necessary in an older version of ruby but is not necessary after ruby 2.0
## - you used %Q - this works but is not necessary
##   - From class3 notes, you only need to use %Q if you are going 
##     to have a variable inside your string like:
# str8 = %Q{
#   #{fname} #{lname} picked a peck of pickled peppers.
#   A peck of pickled peppers #{fname} #{lname} picked.
#   If #{fname} #{lname} picked a peck of pickled peppers,
#   Where's the peck of pickled peppers that #{fname} #{lname} picked?
# }
##
##   - Instead you could have used %q or just simply use "" like:
#   poem = "
#     Jack and Jill went up the hill
#     To fetch a pail of water.
#     Jack fell down and broke his crown,
#     And Jill came tumbling after.
#   "  

