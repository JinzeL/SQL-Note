select followee follower, count(distinct(follower)) num
from follow
group by followee
having followee in (select follower from follow)