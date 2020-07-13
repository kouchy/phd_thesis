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
args.append("--dec-polar-nodes")
args.append("$DCP")

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

print("#L", tab, "R", tab, "N", tab, "K", tab, "R", tab, "Eb/N0_SPC_4", tab, "Eb/N0_SPC",tab, "Eb/N0 diff (dB)", tab, "FER")

N_cur = N_min
while N_cur <= N_max:
	K_cur = int(N_cur * R)

	args[len(args) -9] = str(N_cur)
	args[len(args) -7] = str(K_cur)

	fer_b = 1.0
	found = False
	snr_b = 0.0
	step  = 0.25
	args[len(args) -1] = "{R0,R0L,R1,REP,REPL,SPC_4}"

	while not found:
		fer_a = fer_b
		snr_a = snr_b
		snr_b = snr_b + step
		args[len(args) -5] = str(snr_b)
		args[len(args) -3] = str(snr_b)
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

		if float(cols[2]) < 25:
		print("Failed < 25")
	if float(cols[2]) < 50:
		print("Warning < 50")
	if float(cols[2]) < 100:
		print("Warning < 100")

	snr_r = snr_a + (snr_b - snr_a) * (fer_r - fer_a) / (fer_b - fer_a)
	snr_spc_4 = round(snr_r,2)


	fer_b = 1.0
	found = False
	snr_b = 0.0
	step  = 0.25
	args[len(args) -1] = "{R0,R0L,R1,REP,REPL,SPC}"

	while not found:
		fer_a = fer_b
		snr_a = snr_b
		snr_b = snr_b + step
		args[len(args) -5] = str(snr_b)
		args[len(args) -3] = str(snr_b)
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

	if float(cols[2]) < 25:
		print("Failed < 25")
	if float(cols[2]) < 50:
		print("Warning < 50")
	if float(cols[2]) < 100:
		print("Warning < 100")

	snr_r = snr_a + (snr_b - snr_a) * (fer_r - fer_a) / (fer_b - fer_a)
	snr_spc = round(snr_r,2)

	snr_diff = round(snr_spc - snr_spc_4,3)

	print(N_cur, tab, K_cur, tab, R, tab, snr_spc_4, tab, snr_spc, tab, snr_diff, tab, fer_r)

	N_cur = N_cur * 2