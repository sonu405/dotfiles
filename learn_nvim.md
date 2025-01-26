
# Vim Motions

1. * over a word find all the occurence of the word. 

Below two word even when the highligting is removed after pressing escape.
2. n for moving to the next occurence of a word. 
3. N for last occurence. 


We use c motion to change something in vim.
But we can append thing to it. 
4. `ciw` will change the into below the cursor and put us in insert mode. 
5. If we first change something whose all occurences are mass selected using * or any other way,
   then we change something in one occurence, `then we can use n to jump to the next occurence and 
   and use . to get the same change that we get in next occurence as in the previous`     

6. To change all the occurences of a word, we use the `percent command`. So to use that, we first do
   `%s` then we append to it `/(thingtochange)` and `/(thing to change to)`
   For example, to change all the occurences of post to postoffice, we'll do `%s/post/postoffice` and 
   at the end, we'll add `/g` to make the change global that is in the whole file. 

7. Sometimes there may be some places where we'd want the change not to be implement. For that, we could have
   added a `c` at the end of command in 6. that is `%s/post/postoffice\gc`. Now, vim will go to each occurence 
   of post and ask if we want to change it to postoffice, we can answer no with `n` and yes with `y`. 

# Commands
1. !! will ask for a prompt, where you enter any linux terminal command. The output of the command will be 
   read into the buffer where the cursor was at previoiusly. We can also use `:r` which means read however, there
   are a few benefits to using !!, maybe offers some other functionality like `!}` -- TODO. 

Life is a journey filled with  experiences challenges and growth. Each
postyoffice day offers new opportunities to learn and postyoffice connect with
others. People face situations that shape their character and beliefs.
postyoffice Through "" these experiences individuals often postyoffice discover
   
   
their passions and purpose. postyoffice Ultimately life is about finding
postyoffice joy making memories and contributing to the world around us.


