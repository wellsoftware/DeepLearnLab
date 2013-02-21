function [ v_expected ] = crbmVExpectation( crbm, hidden )


% MATLAB suggested this to reduce overhead in parfor.
W = crbm.W;

v_expected = convn(hidden, W, 'full');

k_dim = length(size(W)) -1;
v_expected = sigmoid(sum(v_expected, k_dim)+crbm.v_b);

