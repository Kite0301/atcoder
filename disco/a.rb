# n=gets.chop
# a=gets.split.map &:to_i
n=gets.to_i
s='DiscoPresentsDiscoveryChannelProgrammingContest2016'
puts s.scan(/.{1,#{n}}/)
