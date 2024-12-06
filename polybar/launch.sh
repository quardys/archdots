#! /bin/sh

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bot1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar bot2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
