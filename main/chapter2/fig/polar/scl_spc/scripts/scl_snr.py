#!/usr/bin/python3

import os
import sys
import math
import subprocess

# print('Number of arguments:', len(sys.argv), 'arguments.')
# print('Argument List:', str(sys.argv), "\n")

args = sys.argv[1].split(" ")
args.append("-e")
args.append("100")
args.append("--term-freq"    )
args.append("0")
args.append("--sim-no-colors")
args.append("-N")
args.append("$N")
args.append("-K")
args.append("$K")
args.append("-m")
args.append("$m")
args.append("-M")
args.append("$m")

N_min = int  (sys.argv[2])
N_max = int  (sys.argv[3])
R     = float(sys.argv[4])
fer_r = float(sys.argv[5])
# print('args  = ', args)
# print('N_min = ', N_min)
# print('N_max = ', N_max)
# print('R     = ', R)
# print('fer   = ', fer, "\n")

tab = "\t"

print("#N", tab, "K", tab, "R", tab, "Eb/N0", tab, "FER")

N_cur = N_min
while N_cur <= N_max:
	K_cur = int(N_cur * R)

	args[len(args) -7] = str(N_cur)
	args[len(args) -5] = str(K_cur)

	fer_b = 1.0
	found = False
	snr_b = 0.0
	step  = 0.25

	while not found:
		fer_a = fer_b
		snr_a = snr_b
		snr_b = snr_b + step
		args[len(args) -3] = str(snr_b)
		args[len(args) -1] = str(snr_b)
		process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
		(stdout, stderr) = process.communicate()
		lines = stdout.decode('utf-8').split('\n')
		for line in lines:
			if len(line) and line[0] != '#' and line[0] != '(':
				line = line.replace("||", "|").replace(" ", "")
				cols = line.split("|")
				fer_b = float(cols[6])
		if fer_b < fer_r :
			found = True

	snr_r = snr_a + (snr_b - snr_a) * (fer_r - fer_a) / (fer_b - fer_a)
	snr_r = round(snr_r,2)


	print(N_cur, tab, K_cur, tab, R, tab, snr_r, tab, fer_r)

	N_cur = N_cur * 2