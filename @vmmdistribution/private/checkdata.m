function checkdata(X,obj)
% VMMDISTRIBUTION/CHECKDATA Check the size and type of input X
%   CHECKDATA(X) returns an error if data X is not a n-by-2 dimensional
%   numeric matrix or it is not in radians from [-pi, pi]
%
%   CHECKDATA(X, OBJ) returns an error if the columns of X does not equal
%   the OBJ.NDimensions

if ~ismatrix(X) || ~isnumeric(X)
    error(message('stats:vmmdistribution:RequiresMatrixData'));
end

if any(X(:) > pi) || any(X(:) < -pi)
    error(message('stats:vmmdistribution:RequireRadianData'));
end

if nargin > 1
    [~, d] = size(X);
    if d ~= obj.Ndimensions
        error(message('stats:vmmdistribution: XSizeMismatch', obj.NDimensions));
    end
end % If obj is an input

end % Function 
