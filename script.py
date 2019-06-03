#!/usr/bin/python3
# -*- coding: utf-8 -*-

from random import randint
from os.path import isfile


def writeFile(nameFile, op="w", text="Error!"):
    if not isfile(nameFile):
        f = open(nameFile,op)
        f.write(text)
        f.close()
    else:
        print("Write Aborted: Existing file!")

def opcional(nProb, nProgs):
    text = ""
    if nProb >= 2:
        text += "\t\t;;TotalHours\n\t\t(= (totalHours) 0)\n\n"
    if nProb >= 3:
        text += "\t\t;;NumTasks programmer\n"+inits("numTasks",nProgs,"p",0)+"\n"
    if nProb >= 4:
        text += "\t\t;;WorkingProgrammers\n\t\t(= (workingProgrammers) 0)\n\n"
    return text


def goal(nProb):
    text = "(:goal (forall (?t - task) (taskAssigned ?t)))"
    if nProb == 1:
        text = "(:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))"
    elif nProb == 2:
        text = """(:goal (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))))
    (:metric minimize(totalHours))"""
    elif nProb == 3:
        text = """(:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTasks ?p) 2))) )
    (:metric minimize(totalHours))"""
    elif nProb == 4:
        text = """(:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTasks ?p) 2))) )
    (:metric maximize (+ (* 10 (workingProgrammers)) (* 1 (totalHours))))"""


    return text

def generarProblema(nProb, nomProb, nProgs, nTasks):
    text = mainText(nomProb,nProgs,nTasks)

    text += opcional(nProb,nProgs)
    goals = goal(nProb)

    text += ' '*4 +""")
    ;; The goal is:
    """+goals+"\n)"

    return text

def mainText(nomProb,nProgs,nTasks):
    progs, tasks = "", ""
    for i in range(nProgs):
        progs += "p"+str(i+1)+" "
    for i in range(nTasks):
        tasks += "t"+str(i+1)+" "

    text ="""
(define (problem """+nomProb+""")
    (:domain tasking)
    (:objects
        """+progs+"""- programmer
        """+tasks+"""- task
    )
    (:init
        ;;Ability programmer
"""+inits("ability",nProgs,"p")+"""
        ;;Quality programmer
"""+inits("quality",nProgs,"p")+"""
        ;;Complexity tasks
"""+inits("complexity",nTasks,"t")+"""
        ;;Duration tasks
"""+inits("duration",nTasks,"t")+"\n"
    return text

def myRand(n):
    return randint(1,n+1)

def inits(opcio,n,c,num=1):
    text = ""
    for i in range(n):
        if num != 0: num = myRand(n)
        text +="\t\t(= ("+opcio+" "+c+str(i+1)+") "+str(num)+")\n"
    return text


def generar():
    while True:
        try:
            nProb = int(input("\nLevel domain: "))

            break
        except ValueError:
            print("Error Value!")
    for i in ["a","b","c"]:
        if nProb == 0:
            nomProb = "B"
        else:
            nomProb = "E"+str(nProb)
        nomProb += i
        name = "problem"+nomProb+".pddl"
        nProgs = int(input("\nNum Programmers: "))
        nTasks = int(input("\nNum Tasks: "))
        text = generarProblema(nProb,nomProb,nProgs,nTasks)
        writeFile(name,text=text)
        #print(text)




###########
### MAIN
###########
generar()
#print(text)
print("OK!")
