
swaymsg '[title="MARS 4.5"] focus' &
wait
echo -e "key ctrl+w\nkey ctrl+o" | dotool &
wait
swaymsg '[class="Mars"] focus'
wait 
echo -e "key Enter" | dotool

