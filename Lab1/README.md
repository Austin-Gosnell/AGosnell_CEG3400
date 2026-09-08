# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Austin Gosnell

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?
  *yes
Answer the following in this file:

* How many unique users are in the data?
  * 37 unique users
* How many salts did you create?
  * 37 unique salts
* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`)
  * 1369 possible combinations
* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?
  * since each nonce is only used once and changes each time, nearly infinite
* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?
  * using nonces and not storing each step in a seperate .txt file

```
for i in {1..37}; do shuf -i 00000-99999 -n 1; done > salts.txt
while IFS= read -r line; do printf "$line" | sha256sum; done < first_salt.txt
```
   *(asked google AI "bash to generate 37 random 5 digit numbers". Answer was the first code line above.)
   *(asked google AI "how to sha256sum individual lines in a .txt file". Answer was the second line of code above)
---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
7094401755christmasy 000095859b10351101941dfa7bf81234e7f9e76f827d6694bb73a93196e8de24
9581592190scopate 0000032932491897e13d3d7a93c6573ab2dd30a97bef841664868cf38ac3778f
858542209scribbling 0000457c781a857b1460cf58e7ccf653c14a0176b3be2e57f49e10f9f1d30d32
5999395093baronage 000028f06f19409c06d4a530ee2050ed9ce55c55cbf8bd3c85fb3f6ac5d4e829
9863610226xenodochium 000007fd26ed4a02f1be340d6b29e76e7a31867c13584e4a583e060c5b675af3
```

* How many words were in your dictionary?
    *194,000
* How many nonces did your code iterate over?
    *194,000
* What was the maximum number of hashes your code *could* compute given the above?
    *I only set it up to do 194,000 combinations, but that's 194,000 every time the command is ran, so theoretically infinite
* What did you think about Task 2?
    *I thought it was a lot of fun trying to figure out how to combine lists and mine with as few steps as I could
* Is there a better way than brute force to attempt to get higher valued coins?
    *I'm sure that there is, I just don't know enough yet to think of it
* Why or why not?
    *I'm sure there are techniques for getting nonces or words that tend to convert to hashes with more zeros

```bash
paste -d '' nonces.txt dictionary.txt > pre-hash.txt
[ -f "dictionary.txt"] || wget http://www.gwicks.net/textlists/english3.zip
```
    *(asked google AI "how to take one line from a .txt and combine it with the same line number of another .txt". Answer was the above command)
    *(asked google AI "how to run wget only if a file is not found". Answer is the second command above
    *http://www.gwicks.net/dictionaries.htm for the dictionary I used
