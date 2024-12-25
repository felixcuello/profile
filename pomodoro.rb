#!/usr/bin/env ruby
# frozen_string_literal: true

# https://en.wikipedia.org/wiki/Pomodoro_Technique

def start_timer(minutes, seconds, is_break: false)
  while minutes >= 0
    while seconds >= 0
      timer = sprintf("%02d:%02d", minutes, seconds)
      `tmux rename-window -t 0 "#{is_break ? 'break! =)' : 'pomodoro'} #{timer}"`
      sleep(1)
      seconds -= 1
    end
    seconds = 59
    minutes -= 1
  end
end

if ARGV[0] == 'break'
  start_timer(6, 0, is_break: true)
  `say "Break has finished. You can start working now"`
  exit
end

start_timer(40, 0)
`say "Pomodoro has finished. You can take a break now"`
