<-! $

$ \#rendertime .text moment!format '[at] h:mm:ss A [on] Do [of] MMMM YYYY'

$now = $ \#now
setInterval !->
  $now.html JST['now'] { time: new Date, moment }
, 1000
