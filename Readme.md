# hobby_shop
There is a tiny shop written in Ruby language.
As for now, you can buy some books, CD's and DVD-movies. 

You have to have `ruby` installed on your local machine.
To run the application on your local machine, please, clone this repo, make `cd` to directory and run `ruby main.rb`. You will see the product collection where you can choose any element from the list by entering it's number.

Here it is:

![alt text](https://media.giphy.com/media/St57MYmOp5jqPgwriT/giphy.gif)

To add new items to stock just create new `txt` file in `data/%classname%` directory of application.
File should have special structure:

**books**:
```
title
genre
author
price
copies in stock
```

**cds**:
```
title
artist
genre
year
price
copies in stock
```

**movies**:
```
title
director
year
price
copies
```

Hope you will enjoy it!
