use_bpm 94
use_synth :piano

define :halen do |l, m, n, o, p|
  play l
  sleep 1/4.0
  play m
  sleep 1/4.0
  play n
  sleep 1/4.0
  play o
  sleep 1/4.0
  play p
  sleep 1/4.0
end

live_loop :yearg do
  14.times do
    with_fx :reverb do
      with_fx :reverb do
        halen :a4, :d4, :g4, :d4, :f4
        halen :a4, :d4, :g4, :c5, :d4
        halen :d5, :d4, :a4, :c5, :g4
      end
    end
  end
  stop
end

sleep 16

2.times do
  use_synth :pluck
  with_fx :tremolo do
    with_fx :compressor do
      with_fx :reverb do
        play :bb2, amp: 10, sustain: 7, sustain_level: 4
        play :f2, amp: 10, sustain: 7, sustain_level: 4
        play :bb1, amp: 10, sustain: 7, sustain_level: 4
      end
    end
  end
  sample :drum_splash_soft, amp: 0.4
  sleep 2
  n=0.2
  6.times do
    sample :drum_bass_soft, amp: n
    sleep 1.0
    n=n+0.2
  end
  with_fx :tremolo do
    with_fx :compressor do
      with_fx :reverb do
        play :d3, amp: 10, sustain: 7, sustain_level: 4
        play :a2, amp: 10, sustain: 7, sustain_level: 4
        play :d2, amp: 10, sustain: 7, sustain_level: 4
      end
    end
  end
  sample :drum_splash_soft
  sleep 2
  n=0.2
  6.times do
    sample :drum_bass_soft, amp: n
    sleep 1.0
    n=n+0.2
  end
end

with_fx :tremolo do
  with_fx :compressor do
    with_fx :reverb do
      play :bb2, amp: 10, sustain: 4, sustain_level: 4
      play :f2, amp: 10, sustain: 4, sustain_level: 4
      play :bb1, amp: 10, sustain: 4, sustain_level: 4
      
    end
  end
end
sample :drum_splash_soft
sleep 2
n=0.2
2.times do
  sample :drum_bass_soft, amp: n
  sleep 1.0
  n=n+0.2
end

with_fx :tremolo do
  with_fx :compressor do
    with_fx :reverb do
      play :c3, amp: 10, sustain: 3, sustain_level: 4
      play :g2, amp: 10, sustain: 3, sustain_level: 4
      play :c2, amp: 10, sustain: 3, sustain_level: 4
    end
  end
end

sleep 3
use_synth :pluck
with_fx :tremolo do
  with_fx :compressor do
    with_fx :reverb do
      play :c3, amp: 10
      play :g2, amp: 10
      play :c2, amp: 10
      sleep 1/4.0
      play :c3, amp: 10
      play :g2, amp: 10
      play :c2, amp: 10
      sleep 1/4.0
      play :d3, amp: 10
      play :a2, amp: 10
      play :d2, amp: 10
    end
  end
end
