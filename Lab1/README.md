# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Austin Gosnell

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?
-yes
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
* asked google AI "bash to generate 37 random 5 digit numbers". Answer was the first code line above.
* asked google AI "how to sha256sum individual lines in a .txt file". Answer was the second line of code above
---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```

```

* How many words were in your dictionary?
* How many nonces did your code iterate over?
* What was the maximum number of hashes your code *could* compute given the above?
* What did you think about Task 2?
* Is there a better way than brute force to attempt to get higher valued coins?
* Why or why not?


```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 2 here
```

