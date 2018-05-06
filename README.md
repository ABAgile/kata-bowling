## Bowling Kata

### Requirement

Create a program, which, given a valid sequence of rolls for one line of
American Ten-Pin Bowling, produces the total score for the game.  This is a
summary of the rules of the game:

- Each game, or “line” of bowling, includes ten turns, or “frames” for the
  bowler.

- In each frame, the bowler gets up to two tries to knock down all the pins.

- If in two tries, he fails to knock them all down, his score for that frame is
  the total number of pins knocked down in his two tries.

- If in two tries he knocks them all down, this is called a “spare” and his
  score for the frame is ten plus the number of pins knocked down on his next
  throw (in his next turn).

- If on his first try in the frame he knocks down all the pins, this is called
  a “strike”.  His turn is over, and his score for the frame is ten plus the
  simple total of the pins knocked down in his next two rolls.

- If he gets a spare or strike in the last (tenth) frame, the bowler gets to
  throw one or two more bonus balls, respectively. - These bonus throws are
  taken as part of the same turn. If the bonus throws knock down all the pins,
  the process does not repeat: the bonus throws are only used to calculate the
  score of the final frame.

- The game score is the total of all frame scores.

Here are some things that the program will not do:

- We will not check for valid rolls.

- We will not check for correct number of rolls and frames.

- We will not provide scores for intermediate frames.

The input is a scorecard from a finished bowling game, where “X” stands for a
strike, “-” for no pins bowled, and “/” means a spare. Otherwise figures 1-9
indicate how many pins were knocked down in that throw.

### Setup

- assume [asdf](https://github.com/asdf-vm/asdf) installed

- Install ruby 2.5.1

  ```bash
  asdf plugin-add ruby
  asdf install ruby 2.5.1
  ```

- Clone project & bundle gems

  ```bash
  git clone https://github.com/ABAgile/kata-bowling ./bowling
  cd bowling
  gem install bundler
  bundle install
  ```
