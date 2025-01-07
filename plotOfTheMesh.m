clearvars
close all

fileName = 'mesh.pdf';

nodes = [0,0;
    5,0;
    5,1;
    16/5, 14/5;
    0,1];

elem = [1,2,3,5;
    3,4,5,3];

omega1 = [0,0; %rectangle
    5,0;
    5,1;
    0,1;
    0,0];

omega2 = [5,1; %right triangle
    16/5, 14/5;
    0,1];

axis equal

plot(omega1(:,1), omega1(:,2),'-',LineWidth=3,color='black')

axis([-1.0,6.0,-0.8,3.5])

axis off

hold on

plot(omega2(:,1), omega2(:,2),'-',LineWidth=3,color='black')

%Labels for global nodes
text(-0.4,-0.2,'\textcircled{1}',Interpreter='latex',FontSize=20)
text(5.1,-0.2,'\textcircled{2}',Interpreter='latex',FontSize=20)
text(5.1,1.0,'\textcircled{3}',Interpreter='latex',FontSize=20)
text(3,3,'\textcircled{4}',Interpreter='latex',FontSize=20)
text(-0.4,1.0,'\textcircled{5}',Interpreter='latex',FontSize=20)

%Labels for local nodes

%Element 1: rectangle
text(0.1,0.1,'$1$',Interpreter='latex',FontSize=12,color='blue')
text(4.8,0.1,'$2$',Interpreter='latex',FontSize=12,color='blue')
text(4.8,0.85,'$3$',Interpreter='latex',FontSize=12,color='blue')
text(0.1,0.85,'$4$',Interpreter='latex',FontSize=12,color='blue')

%Element 2: right triangle
text(4.65,1.1,'$1$',Interpreter='latex',FontSize=12,color='blue')
text(3.1,2.6,'$2$',Interpreter='latex',FontSize=12,color='blue')
text(0.4,1.1,'$3$',Interpreter='latex',FontSize=12,color = 'blue')

%Length of the edges
text(2.5,-0.2,'$5$',Interpreter='latex',FontSize=15,color='red')
text(5.1,0.5,'$1$',Interpreter='latex',FontSize=15,color='red')
text(4.2,2.0,'$3$',Interpreter='latex',FontSize=15,color='red')
text(1.4,2.0,'$4$',Interpreter='latex',FontSize=15,color='red')

%Labels of the elements
text(2.45,0.5,'$$\Omega^{1}$$',Interpreter='latex',FontSize=22)
text(2.75,1.7,'$$\Omega^{2}$$',Interpreter='latex',FontSize=22)

hold off

saveas(gcf,fileName,'pdf')