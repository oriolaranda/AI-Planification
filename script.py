#!/usr/bin/python3
# -*- coding: utf-8 -*-

from random import randint

def writeFile(nameFile, op="w", text="Error!"):
    f = open(nameFile,op)
    f.write(text)
    f.close()


def generarProblema():
    nomProb = input("\nProblem name: ")
    nProgs = int(input("\nNum Programmers: "))
    nTasks = int(input("\nNum Tasks: "))

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
        """+inits("duration",nTasks,"t")+"""
    )
    ;; The goal is all tasks assign:
    (:goal (forall (?t - task) (taskAsssigned ?t)))
)"""
    return text


def rand():
    return randint(1,3)

def inits(opcio,n,c):
    text = ""
    for i in range(n):
        text +="\n\t(= ("+opcio+" "+c+str(i+1)+") "+str(rand())+")"
    return text

###########
### MAIN
###########
text = generarProblema()
#print(text)
print("OK!")
writeFile("out.txt",text=text)
