clear; clc; close all;

s = [1 2 1 1 3];
t = [2 3 3 4 4];
G = digraph(s, t);

figure;
h = plot(G, ...
    'Layout', 'force', ...
    'NodeLabel', {'1','2','3','4'}, ...
    'ArrowSize', 12, ...
    'LineWidth', 1.5);

edgeIdx = [ findedge(G,1,2), findedge(G,2,3), findedge(G,1,3), findedge(G,1,4), findedge(G,3,4) ];
edgeLabels = {'1','2','3','4','5'};
labeledge(h, edgeIdx, edgeLabels);
