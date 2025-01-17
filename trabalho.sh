#!/bin/bash
# 1.

## a) 
grep -o '[01]*' bruxarias.txt > 1a.txt

## b) 
grep -o '\b1[01]{7}\b' bruxarias.txt > 1b.txt

## c) 
grep -E '^([^1]*\b1[01]{7}\b[^1]*)$' bruxarias.txt > 1c.txt

## d)
grep -o '\b[1-9][0-9]*\b' bruxarias.txt > 1d.txt

## e) 
grep -o '[ue]tt' bruxarias.txt > 1e.txt

## f) 
grep -o '\b[A-Za-z][a-z]{2,}\b' bruxarias.txt > 1f.txt

## g) 
grep -o '\b[a-zA-Z][a-zA-Z0-9_]*\b' bruxarias.txt > 1g.txt

## h) 
grep -o '\b(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]|[0-9])(\.(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]|[0-9])){3}\b' bruxarias.txt > 1h.txt

# 2. 

## a)
sudo find /etc -type d > 2a.txt

## b) 
sudo find /etc -maxdepth 1 -type d > 2b.txt#!/bin/bash
# 1.

## a) 
grep -o '[01]*' bruxarias.txt > 1a.txt

## b) 
grep -o '\b1[01]{7}\b' bruxarias.txt > 1b.txt

## c) 
grep -E '^([^1]*\b1[01]{7}\b[^1]*)$' bruxarias.txt > 1c.txt

## d)
grep -o '\b[1-9][0-9]*\b' bruxarias.txt > 1d.txt

## e) 
grep -o '[ue]tt' bruxarias.txt > 1e.txt

## f) 
grep -o '\b[A-Za-z][a-z]{2,}\b' bruxarias.txt > 1f.txt

## g) 
grep -o '\b[a-zA-Z][a-zA-Z0-9_]*\b' bruxarias.txt > 1g.txt

## h) 
grep -o '\b(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]|[0-9])(\.(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]|[0-9])){3}\b' bruxarias.txt > 1h.txt

# 2. 

## a)
sudo find /etc -type d > 2a.txt

## b) 
sudo find /etc -maxdepth 1 -type d > 2b.txt

## c)
sudo find / -type f -size +1k > 2c.txt 2>/dev/null

## d)
sudo find ~ -atime 7 > 2d.txt

# 3.

## a) 
awk -F: '{print $1}' /etc/passwd > 3a.txt

## b)
awk -F: 'NR>=10 && NR<=20 {print $1}' /etc/passwd > 3b.txt

# 4. 

## a)
sudo sed -i 's/^brunofaria:/exercicio:/' /etc/passwd

## b)
sudo sed -i '/^brunofaria:/d' /etc/passwd


## c)
sudo find / -type f -size +1k > 2c.txt 2>/dev/null

## d)
sudo find ~ -atime 7 > 2d.txt

# 3.

## a) 
awk -F: '{print $1}' /etc/passwd > 3a.txt

## b)
awk -F: 'NR>=10 && NR<=20 {print $1}' /etc/passwd > 3b.txt

# 4. 

## a)
sudo sed 's/^brunofaria:/exercicio:/' /etc/passwd | sudo tee /etc/passwd > /dev/null

## b)
sudo sed '/^brunofaria:/d' /etc/passwd | sudo tee /etc/passwd > /dev/null
