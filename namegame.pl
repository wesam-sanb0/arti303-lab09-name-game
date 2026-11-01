% ============================================================
% ARTI 401 - Lab 9 | IO Stream and Database Manipulation
% Name: Wesam Kamal Sanbo
% Lab Activity: The Name Game
% ============================================================

:- dynamic letter/1.

% ============================================================
% Menu
% ============================================================
menu :-
    nl, writeln('Hi. This is the "Name Game"'),
    writeln('You will be given a set of English letters in which you will add, delete or move to create your name.'),
    nl,
    writeln('Choose from the following:'),
    writeln('1- Display the current set of letters'),
    writeln('2- Add a letter'),
    writeln('3- Add a letter at the top'),
    writeln('4- Add a letter at the bottom'),
    writeln('5- Delete a letter'),
    writeln('6- Delete all letters'),
    writeln('7- Exit'),
    write('Enter your choice... '),
    read(Choice),
    do_choice(Choice).

% ============================================================
% Choices
% ============================================================

% 1- Display the current set of letters
do_choice(1) :-
    nl, write('Current letters: '), nl,
    ( letter(X), write(X), write(' '), fail ; true ),
    nl, menu.

% 2- Add a letter
do_choice(2) :-
    nl, write('Enter a letter to add: '),
    read(Letter),
    assertz(letter(Letter)),
    write('Letter added.'), nl,
    menu.

% 3- Add a letter at the top
do_choice(3) :-
    nl, write('Enter a letter to add at the top: '),
    read(Letter),
    asserta(letter(Letter)),
    write('Letter added at the top.'), nl,
    menu.

% 4- Add a letter at the bottom
do_choice(4) :-
    nl, write('Enter a letter to add at the bottom: '),
    read(Letter),
    assertz(letter(Letter)),
    write('Letter added at the bottom.'), nl,
    menu.

% 5- Delete a specific letter
do_choice(5) :-
    nl, write('Enter the letter to delete: '),
    read(Letter),
    ( retract(letter(Letter)) ->
        write('Letter deleted.'), nl
    ;
        write('Letter not found.'), nl
    ),
    menu.

% 6- Delete all letters
do_choice(6) :-
    retractall(letter(_)),
    nl, write('All letters deleted.'), nl,
    menu.

% 7- Exit
do_choice(7) :-
    nl, writeln('===< End of Name Game >==='),
    nl.

% Invalid choice
do_choice(_) :-
    nl, write('Sorry, wrong option. Please try again.'), nl,
    menu.