from __future__ import print_function
from random import shuffle

class Card(object):
    
    def __init__(self, value, suit):
        self.value = value
        self.suit = suit


suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
values = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
deck = []
for i in values:
    for j in suits:
        x = Card(i, j)
        deck.append(i + " of " + j)       
shuffle(deck)

top, middle, bottom = [], [], []

def deal():
    global deck
    global top
    global middle
    global bottom
    for i in range(17):
        top.append(deck.pop())
        middle.append(deck.pop())
        bottom.append(deck.pop())
    top.append(deck.pop())
   
def run():
    print("Think of a Card\n")
    
    def correct_on_top():
        global deck
        global top
        global middle
        global bottom
        for x in top:
            print(x + "\n")
            
        response = raw_input("Yes or No: Is your card in this deck?\n>> ")
        
        if response == "yes":
            top, middle, bottom = top, middle, bottom
            deck = []
        
            deck.extend(top)
        
            deck.extend(middle)
            
            deck.extend(bottom)
            
            top, middle, bottom = [], [], []
            
        
        else:
            for x in middle:
                print(x + "\n")
            
            response = raw_input("Yes or No: Is your card in this deck?\n>> ")
            
            if response == "yes":
                top, middle, bottom = middle, top, bottom
                deck = []
                
                deck.extend(top)
                
                deck.extend(middle)
                
                deck.extend(bottom)
                
                top, middle, bottom = [], [], []
                
            else:
                top, middle, bottom = bottom, top, middle
                deck = []
                
                deck.extend(top)
                
                deck.extend(middle)
                
                deck.extend(bottom)
                
                top, middle, bottom = [], [], []
            
            
    def correct_on_bottom():
        global deck
        global top
        global middle
        global bottom
        for x in top:
            print(x + "\n")
            
        response = raw_input("Yes or No: Is your card in this deck?\n>> ")
        
        if response == "yes":
            top, middle, bottom = middle, bottom, top
            deck = []
            
            deck.extend(top)
                
            deck.extend(middle)
                
            deck.extend(bottom)
                
            top, middle, bottom = [], [], []
            
            
        else:
            for x in middle:
                print(x + "\n")
            
            response = raw_input("Yes or No: Is your card in this deck?\n>> ")
            
            if response == "yes":
                top, middle, bottom = top, bottom, middle
                deck = []
                
                deck.extend(top)
                
                deck.extend(middle)
                
                deck.extend(bottom)
                    
                top, middle, bottom = [], [], []
                
                
            else:
                top, middle, bottom = top, middle, bottom
                deck = []
                
                deck.extend(top)
                
                deck.extend(middle)
                
                deck.extend(bottom)
                    
                top, middle, bottom = [], [], []
                
                
    
    deal()
    correct_on_top()
    
    deal()
    correct_on_bottom()
    
    deal()
    correct_on_top()
    
    deal()
    correct_on_bottom()
    
    deal()
    correct_on_top()
    
    print("Your card is " + deck[0])
    
run()