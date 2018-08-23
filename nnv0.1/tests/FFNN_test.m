I = ExamplePoly.randVrep;   % input set

W1 = [1.5 1; 0 0.5; 1 -1];  
b1 = [0.5; 0.5; 0];
L1 = Layer(W1, b1, 'ReLU'); % first layer

W2 = [-1.5 1 0.5; 0.1 -1 0];  
b2 = [0.1; 0.2];
L2 = Layer(W2, b2, 'ReLU'); % second layer

Layers = [L1 L2]; % construct an array of layers

F = FFNN(Layers); % construct a feedforward neural network

x = [-1; 0]; % input for evaluation
y = F.evaluate(x); % evaluation on the specific input x

[R1, rn1, t1] = F.reach(I, 'exact'); % compute exact reach set
[R2, rn2, t2] = F.reach(I, 'approx'); % compute an over-approximate reach set

fig1 = figure;
R1.plot;
fig2 = figure;
R2.plot;

L3 = Layer(W2, b2, 'Linear');
Layers = [L1 L3];
F = FFNN(Layers);


[R3, rn3, t3] = F.reach(I, 'exact'); % compute exact reach set when the output layer has a Linear activation function
[R4, rn4, t4] = F.reach(I, 'approx'); % compute an over-approximate reach set when the output layer has a Linear activation function

fig3 = figure;
R3.plot;
fig4 = figure;
R4.plot;