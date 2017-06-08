Here is a cool line I learned from a coworker at one of my internships (though this particular line is using Mac top):
top -l 1 | perl -ape 'if (/chrome/i) { $count += $F[7] } }{ $c = $count / 1000; print "Chrome is using this much memory: $c GB\n"'
