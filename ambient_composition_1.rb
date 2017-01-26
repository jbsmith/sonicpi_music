# Ambient composition
# original work by JB Smith using basic examples provided with Sonic Pi docs
# feel free to copy and use as you see fit


live_loop :drone1 do
  with_fx :krush, cutoff: 2.4 do
    sample :ambi_drone, rate: 1.5, attack: 2, amp: 12, cutoff: rrand(60, 120)
  end
  sleep 8
  with_fx :krush, cutoff: 2.4 do
    sample :ambi_drone, rate: 0.3, attack: 2, amp: 12, cutoff: rrand(60, 120)
  end
  sleep 8
  with_fx :krush, cutoff: 2.4 do
    sample :ambi_drone, rate: 0.1, attack: 2, amp: 12, cutoff: rrand(60, 120)
  end
  sleep 8
  with_fx :krush, cutoff: 2.4 do
    sample :ambi_drone, rate: 0.8, attack: 2, amp: 12, cutoff: rrand(60, 120)
  end
  sleep 8
end

live_loop :bell1 do
  sample :drum_cymbal_open, rate: 1.2, amp: 0.4
  sleep 4
  sample :perc_bell, rate: 1.2, amp: 0.4
  sleep 7.5
  sample :perc_bell, rate: 0.4, amp: 0.4, cutoff: rrand(60, 120)
  sleep 0.5
  sample :perc_bell, rate: 1.2, amp: 0.4
  sleep 4
end

live_loop :guit1 do
  with_fx :distortion, distort: 0.4 do
    sample :guit_e_slide, rate: 0.3
  end
  sleep 8
  with_fx :echo, mix: 0.3, phase: rrand(1.5, 4.5) do
    sample :guit_e_slide, rate: 0.7
  end
  sleep 4
  with_fx :distortion, distort: 0.5 do
    sample :guit_e_fifths, rate: 0.6
  end
  sleep 8
end

live_loop :guit2 do
  #with_fx :echo, mix: 0.7, phase: rrand(0.5, 2.5) do
  sample :guit_em9, rate: 0.5
  #end
  #  sample :guit_em9, rate: -0.5
  sleep 32
end

live_loop :guit3 do
  #with_fx :echo, mix: 0.3, phase: rrand(1.5, 4.5) do
  sample :guit_em9, rate: 2.0
  #end
  #  sample :guit_em9, rate: -0.5
  sleep 8
end

live_loop :guit4 do
  #with_fx :echo, mix: 0.3, phase: rrand(1.5, 4.5) do
  sample :guit_em9, rate: 4.0
  #end
  #  sample :guit_em9, rate: -0.5
  sleep 16
end

live_loop :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 6, rate: rrand(0.5, 1.5)
  end
  sleep 7.5
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: rrand(0.5, 1.5)
  end
  sleep 0.5
end
