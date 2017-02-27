# Build a better playlist. After listening to playlists for a while, you
# might start to find that a purely random shuffle just doesn’t quite
# seem...mixed up enough. (Random and mixed up are not at all
# the same thing. Random is totally clumpy.) For example, here’s
# an excerpt from a playlist I made a while back of Thelonius Monk
# and Faith No More:

# music/Jazz/Monk--Nutty/track08.ogg
# music/Jazz/Monk--London_Collection_1/track05.ogg
# music/Jazz/Monk--Nutty/track13.ogg
# music/Jazz/Monk--Round_Midnight/track02.ogg
# music/Jazz/Monk--Round_Midnight/track14.ogg
# music/Jazz/Monk--Round_Midnight/track15.ogg
# music/Jazz/Monk--Round_Midnight/track08.ogg
# music/Rock/FNM--Who_Cares_A_Lot_2/track02.ogg
# music/Rock/FNM--Who_Cares_A_Lot_2/track08.ogg
# music/Rock/FNM--Who_Cares_A_Lot_1/track02.ogg
# music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg

# Hey! I asked for random! Well, that’s exactly what I got...but I
# wanted mixed up. So, here’s the grand challenge: instead of using
# your old shuffle, write a new music_shuffle method. It should take an
# array of filenames (like those listed previously) and mix them up
# good and proper.

# You’ll probably need to use the split method for strings. It returns
# an array of chopped-up pieces of the original string, split where
# you specify, like this:

# awooga = 'this/is/not/a/daffodil'.split '/'
# puts awooga

# this
# is
# not
# a
# daffodil

# Mix it up as best you can!

def music_shuffle filenames
  # We don't want a perfectly random shuffle, so let's
  # instead do a shuffle like card-shuffling. Let's
  # shuffle the "deck" twice, then cut it once. That's
  # not enough times to make a perfect shuffle, but it
  # does mix things up a bit.
  # Before we do anything, let's actually *sort* the
  # input, since we don't know how shuffled it might
  # already be, and we don't want it to be *too* random.

  filenames = filenames.sort
  len = filenames.length

  # Now we shuffle twice.
  2.times do
  l_idx = 0 # index of next card in left pile
  r_idx = len / 2 # index of next card in right pile
  shuf = []
  # NOTE: If we have an odd number of "cards",
  # then the right pile will be larger.
    while shuf.length < len
      if shuf.length%2 == 0
        # take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end

  # And cut the deck.
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts(music_shuffle(songs))
