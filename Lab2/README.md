# CEG 3400 - Lab 2 - Password cracking

Name: 

---

## Task 1 - Simple dictionary attacks

Using a simple dictionary attack and the 500 password wordlist, use the `hashcat` and or `john` to attack both the `sha512.hashes` and `yescrypt.hashes` password lists.  

***Please include the 'hashcat' or 'john' potfile in this repository and answer the following.

* Describe what a basic dictionary attack against a salted/hashed password list is.  Be verbose and explain its top strengths and weaknesses as you see them.

* How many sha512 hashed passwords were you able to crack with the `500_passwords.txt`?

* How many yescrypt hashed passwords were you able to crack with the `500_passwords.txt`?

* Describe what would be needed to crack all hashes in the `/data/*.hashes` files.  Be verbose!

* How many total hashes would be computed while performing the above attacks?  Assume the following:
  * simple dictionary attack
  * using 500 password dictionary
  * attack **both** hash lists

---

## Task 2 - Go Beyond Limits (Choose your own adventure)

Choose ***one*** of the following tasks and document your progress ***well***.

1. Crack one `sha512.hashes` or `yescrypt.hashes` hash with `500_passwords.txt` using a rule based attack (must be a password not found in task 1 or 2 above).
2. Crack one `sha512.hases` or `yescrypt.hashes` hash with `rockyou.txt` that was not found in task 1 or 2 above (this one is known to be possible within the time limit)
   * `rockyou.txt` can be downloaded with: `wget https://github.com/mkijowski/passwords/raw/master/dictionaries/rockyou.txt.gz`
   * Do ***NOT*** include `rockyou.txt` or `rockyou.txt.gz` anywhere in this repository.  I will deduct many points for doing so...

For whichever you chose write a report below documenting the following:

* Which task you chose.
* Your research (relevant links) and an overview of your testing.
* Detaqils of your final successful attempt (both the command used and estimate of time taken). 
* A ***good*** estimate of the total number of hashes computed to complete this task.
* Both parts of task 2 crack a hash that was not previously found in task 1.  Give a detailed description of how and why it was not found previously and what your attack did differently. 
* Analasys of all passwords cracked (and uncracked), counts, trends, etc.

---

## Task 2 report can go here

---

## Bonus points (20 lab points)

My testing shows using `hashcat` with `rockyou.txt` takes between 10 and 20 days to run on an Intel core i7 
processor (17 days 10 hours by my last attempt).  Finish a run before this lab is due. 

Submit a `BONUS.md` file with a count of how many passwords and a brief writeup of how you accomplished this task.
You may work in a team of 3 students on the bonus (and only the bonus).  Each student needs to submit their own 
writeup and potfile with all found passwords. 

