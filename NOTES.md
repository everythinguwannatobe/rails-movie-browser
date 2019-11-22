## Relationships 

**Add to migrations**  

[x] - Users `has_many` WatchLists      
[x] - Users `has_many` Movies `through:` WatchLists  
[x] - Movies `has_many` WatchLists  
[x] - Movies `has_many` Users `through:` WatchLists  

[x] - Watch_lists `belongs_to` Users and Movies  

**Add to models**  

[x] - Users `has_many` WatchLists      
[x] - Users `has_many` Movies `through:` WatchLists  
[x] - Movies `has_many` WatchLists  
[x] - Movies `has_many` Users `through:` WatchLists  

[x] - Watch_lists `belongs_to` Users and Movies 

Use `scope` search 