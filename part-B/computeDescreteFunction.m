% Find the discrete transfer function
function computeDescreteFunction()

    numerator = [1 0.5]
    denominator = [1 4.6 4.95 0.4]
    Ts = 1; % Sampling time
    
    %% Compute best value for sampling time
    
    % 1: Compute roots of the denominator
    denroots = roots(denominator)
    % 2: Compute the time constants of the system
    timeconstants = -1./denroots % inverse of elements inside vector
    % 3: time sample time should be less than
    % the lowest time constant, say 1/10
    lowestimeconstant = min(timeconstants)
    Ts = lowestimeconstant / 5

    %% Apply discretization method 'zoh'
    %[numd,dend] = c2dm(numerator, ...
    %    denominator, Ts,'zoh')
    [numd,dend] = c2dm(numerator, ...
        denominator, Ts,'zoh')
end