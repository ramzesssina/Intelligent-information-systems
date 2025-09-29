% Смены работников
change(anna, morning).
change(boris, evening).
change(karl, night).
change(dina, morning).

% Уже сделанные замены
use_change(anna, boris).
use_change(boris, dina).

valid_change(X, Y):- change(X, S1), change(Y, S2), X \= Y, S1 \= S2, \+ use_change(X, Y).
% X \= Y - Сам себя не можешь заменить
% S1 \= S2 - не служат подряд
% \+ use_change(X, Y) - смена пары еще не проработала