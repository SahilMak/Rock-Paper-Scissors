% Script file: rock_paper_scissors.m
%
% Purpose:
%   To allow the user to play a game of
%   Rock, Paper, Scissors with the computer.
%
% Record of revisions:
%   Date       Programmer       Description of change
%   ====       ==========       =====================
%  09/03/14   Sahil Makhijani   Original code
%
% Define variables:
%   cmp  -- The computer's choice
%   ps  -- The player's choice as a string
%   pn  -- The player's choice as a number

% Allow the computer to select Rock, Paper, or Scissors.
cmp = randi([1 3]);

% Prompt the user for his/her choice of Rock, Paper, or Scissors.
ps = input('Rock, Paper, or Scissors?: ','s');

% Create a numerical representation of the player's choice.
if strcmpi(ps, 'Rock') == 1
    pn = 1;
elseif strcmpi(ps, 'Paper') == 1
    pn = 2;
elseif strcmpi(ps, 'Scissors') == 1
    pn = 3;
else
    disp('Invalid. Try again.')
end

% Compare selections to determine a winner.
if cmp == pn
    fprintf('You and the computer both chose %s. It''s a tie!\n',[upper(ps(1)) ps(2:end)]);
elseif cmp == 1 && pn == 2
    fprintf('You chose Paper and the computer chose Rock. You win!\n');
elseif cmp == 1 && pn == 3
    fprintf('You chose Scissors and the computer chose Rock. You lose!\n');
elseif cmp == 2 && pn == 1
    fprintf('You chose Rock and the computer chose Paper. You lose!\n');
elseif cmp == 2 && pn == 3
    fprintf('You chose Scissors and the computer chose Rock. You win!\n');
elseif cmp == 3 && pn == 1
    fprintf('You chose Rock and the computer chose Scissors. You win!\n');
elseif cmp == 3 && pn == 2
    fprintf('You chose Paper and the computer chose Scissors. You lose!\n');
end