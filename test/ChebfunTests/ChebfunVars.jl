f_1_1 = (x,y) -> 144*(x^4+y^4)-225*(x^2+y^2) + 350*x^2*y^2+81
g_1_1 = (x,y) -> y-x^6
f_1_2 = (x,y) -> (y^2-x^3)*((y-0.7)^2-(x-0.3)^3)*((y+0.2)^2-(x+0.8)^3)*((y+0.2)^2-(x-0.8)^3)
g_1_2 = (x,y) -> ((y+.4)^3-(x-.4)^2)*((y+.3)^3-(x-.3)^2)*((y-.5)^3-(x+.6)^2)*((y+0.3)^3-(2*x-0.8)^3)
f_1_3 = (x,y) -> y^2-x^3
g_1_3 = (x,y) -> (y+.1)^3-(x-.1)^2
f_1_4 = (x,y) -> x - y + .5
g_1_4 = (x,y) -> x + y
f_1_5 = (x,y) -> y + x/2 + 1/10
g_1_5 = (x,y) -> y - 2.1*x + 2
f_2_1 = (x,y) -> cos(10*x*y)
g_2_1 = (x,y) -> x + y^2
f_2_2 = (x,y) -> x
g_2_2 = (x,y) -> (x-.9999)^2 + y^2-1
f_2_3 = (x,y) -> sin(4*(x + y/10 + pi/10))
g_2_3 = (x,y) -> cos(2*(x-2*y+ pi/7))
f_2_4 = (x,y) -> exp(x-2*x^2-y^2)*sin(10*(x+y+x*y^2))
g_2_4 = (x,y) -> exp(-x+2*y^2+x*y^2)*sin(10*(x-y-2*x*y^2))
f_2_5 = (x,y) -> 2*y*cos(y^2)*cos(2*x)-cos(y)
g_2_5 = (x,y) -> 2*sin(y^2)*sin(2*x)-sin(x)
f_3_1 = (x,y) -> ((x-.3)^2+2*(y+0.3)^2-1)
g_3_1 = (x,y) -> ((x-.49)^2+(y+.5)^2-1)*((x+0.5)^2+(y+0.5)^2-1)*((x-1)^2+(y-0.5)^2-1)
f_3_2 = (x,y) -> ((x-0.1)^2+2*(y-0.1)^2-1)*((x+0.3)^2+2*(y-0.2)^2-1)*((x-0.3)^2+2*(y+0.15)^2-1)*((x-0.13)^2+2*(y+0.15)^2-1)
g_3_2 = (x,y) -> (2*(x+0.1)^2+(y+0.1)^2-1)*(2*(x+0.1)^2+(y-0.1)^2-1)*(2*(x-0.3)^2+(y-0.15)^2-1)*((x-0.21)^2+2*(y-0.15)^2-1)
f_4_1 = (x,y) -> sin(3*(x+y))
g_4_1 = (x,y) -> sin(3*(x-y))
f_4_2 = (x,y) -> ((90000*y^10 + (-1440000)*y^9 + (360000*x^4 + 720000*x^3 + 504400*x^2 + 144400*x + 9971200)*(y^8) +
((-4680000)*x^4 + (-9360000)*x^3 + (-6412800)*x^2 + (-1732800)*x + (-39554400))*(y^7) + (540000*x^8 +
2160000*x^7 + 3817600*x^6 + 3892800*x^5 + 27577600*x^4 + 51187200*x^3 + 34257600*x^2 + 8952800*x + 100084400)*(y^6) +
((-5400000)*x^8 + (-21600000)*x^7 + (-37598400)*x^6 + (-37195200)*x^5 + (-95198400)*x^4 +
(-153604800)*x^3 + (-100484000)*x^2 + (-26280800)*x + (-169378400))*(y^5) + (360000*x^12 + 2160000*x^11 +
6266400*x^10 + 11532000*x^9 + 34831200*x^8 + 93892800*x^7 + 148644800*x^6 + 141984000*x^5 + 206976800*x^4 +
275671200*x^3 + 176534800*x^2 + 48374000*x + 194042000)*(y^4) + ((-2520000)*x^12 + (-15120000)*x^11 + (-42998400)*x^10 +
(-76392000)*x^9 + (-128887200)*x^8 + (-223516800)*x^7 + (-300675200)*x^6 + (-274243200)*x^5 + (-284547200)*x^4 +
(-303168000)*x^3 + (-190283200)*x^2 + (-57471200)*x + (-147677600))*(y^3) + (90000*x^16 + 720000*x^15 + 3097600*x^14 +
9083200*x^13 + 23934400*x^12 + 58284800*x^11 + 117148800*x^10 + 182149600*x^9 + 241101600*x^8 + 295968000*x^7 +
320782400*x^6 + 276224000*x^5 + 236601600*x^4 + 200510400*x^3 + 123359200*x^2 + 43175600*x + 70248800)*(y^2) +
((-360000)*x^16 + (-2880000)*x^15 + (-11812800)*x^14 + (-32289600)*x^13 + (-66043200)*x^12 + (-107534400)*x^11 +
(-148807200)*x^10 + (-184672800)*x^9 + (-205771200)*x^8 + (-196425600)*x^7 + (-166587200)*x^6 + (-135043200)*x^5 +
(-107568800)*x^4 + (-73394400)*x^3 + (-44061600)*x^2 + (-18772000)*x + (-17896000))*y + (144400*x^18 + 1299600*x^17 +
5269600*x^16 + 12699200*x^15 + 21632000*x^14 + 32289600*x^13 + 48149600*x^12 + 63997600*x^11 + 67834400*x^10 +
61884000*x^9 + 55708800*x^8 + 45478400*x^7 + 32775200*x^6 + 26766400*x^5 + 21309200*x^4 + 11185200*x^3 + 6242400*x^2 +
3465600*x + 1708800)))
g_4_2 = (x,y) -> 11e-4*(y^7 + (-3)*y^6 + (2*x^2 + (-1)*x + 2)*y^5 + (x^3 + (-6)*x^2 + x + 2)*y^4 + (x^4 + (-2)*x^3 + 2*x^2 +
x + (-3))*y^3 + (2*x^5 + (-3)*x^4 + x^3 + 10*x^2 + (-1)*x + 1)*y^2 + ((-1)*x^5 + 3*x^4 + 4*x^3 + (-12)*x^2)*y +
(x^7 + (-3)*x^5 + (-1)*x^4 + (-4)*x^3 + 4*x^2))
f_5_1 = (x,y) -> 2*x*y*cos(y^2)*cos(2*x)-cos(x*y)
g_5_1 = (x,y) -> 2*sin(x*y^2)*sin(3*x*y)-sin(x*y)
f_6_1 = (x,y) -> (y - 2*x)*(y+0.5*x)
g_6_1 = (x,y) -> x*(x^2+y^2-1)
f_6_2 = (x,y) -> (y - 2*x)*(y+.5*x)
g_6_2 = (x,y) -> (x-.0001)*(x^2+y^2-1)
f_6_3 = (x,y) -> 25*x*y - 12
g_6_3 = (x,y) -> x^2+y^2-1
f_7_1 = (x,y) -> (x^2+y^2-1)*(x-1.1)
g_7_1 = (x,y) -> (25*x*y-12)*(x-1.1)
f_7_2 = (x,y) -> y^4 + (-1)*y^3 + (2*x^2)*(y^2) + (3*x^2)*y + (x^4)
h_7_2 = (x,y) -> y^10-2*(x^8)*(y^2)+4*(x^4)*y-2
g_7_2 = (x,y) -> h_7_2(2*x,2*(y+.5))
f_7_3 = (x,y) -> cos(x*y/(c^2))+sin(3*x*y/(c^2))
g_7_3 = (x,y) -> cos(y/c)-cos(2*x*y/(c^2))
f_7_4 = (x,y) -> sin(3*pi*x)*cos(x*y)
g_7_4 = (x,y) -> sin(3*pi*y)*cos(sin(x*y))
f_8_1 = (x,y) -> sin(10*x-y/10)
g_8_1 = (x,y) -> cos(3*x*y)
f_8_2 = (x,y) -> sin(10*x-y/10) + y
g_8_2 = (x,y) -> cos(10*y-x/10) - x
f_9_1 = (x,y) -> x^2+y^2-.9^2
g_9_1 = (x,y) -> sin(x*y)
f_9_2 = (x,y) -> x^2+y^2-.49^2
g_9_2 = (x,y) -> (x-.1)*(x*y - .2)
f_10_1 = (x,y) -> (x-1)*(cos(x*y^2)+2)
g_10_1 = (x,y) -> sin(8*pi*y)*(cos(x*y)+2)

fs = [f_1_1, f_1_2, f_1_3, f_1_4, f_1_5, f_2_1, f_2_2, f_2_3, f_2_4, f_2_5, f_3_1, f_3_2, f_4_1, f_4_2, f_5_1, f_6_1, f_6_2, f_6_3, f_7_1, f_7_2, f_7_3, f_7_4, f_8_1, f_8_2, f_9_1, f_9_2, f_10_1]
gs = [g_1_1, g_1_2, g_1_3, g_1_4, g_1_5, g_2_1, g_2_2, g_2_3, g_2_4, g_2_5, g_3_1, g_3_2, g_4_1, g_4_2, g_5_1, g_6_1, g_6_2, g_6_3, g_7_1, g_7_2, g_7_3, g_7_4, g_8_1, g_8_2, g_9_1, g_9_2, g_10_1]

a_1_1 = [-1., -1]
b_1_1 = [1., 1]
a_1_2 = [-1., -1]
b_1_2 = [1., 1]
a_1_3 = [-1., -1]
b_1_3 = [1., 1]
a_1_4 = [-1., -1]
b_1_4 = [1., 1]
a_1_5 = [-1., -1]
b_1_5 = [1., 1]
a_2_1 = [-1., -1]
b_2_1 = [1., 1]
a_2_2 = [-1., -1]
b_2_2 = [1., 1]
a_2_3 = [-1., -1]
b_2_3 = [1., 1]
a_2_4 = [-1., -1]
b_2_4 = [1., 1]
a_2_5 = [-4., -4]
b_2_5 = [4., 4]
a_3_1 = [-1., -1]
b_3_1 = [1., 1]
a_3_2 = [-1., -1]
b_3_2 = [1., 1]
a_4_1 = [-1., -1]
b_4_1 = [1., 1]
a_4_2 = [-1., -1]
b_4_2 = [1., 1]
a_5_1 = [-2., -2]
b_5_1 = [2., 2]
a_6_1 = [-1., -1]
b_6_1 = [1., 1]
a_6_2 = [-1., -1]
b_6_2 = [1., 1]
a_6_3 = [-1., -1]
b_6_3 = [1., 1]
a_7_1 = [-1., -1]
b_7_1 = [1., 1]
a_7_2 = [-1., -1]
b_7_2 = [1., 1]
a_7_3 = [-1e-9, -1e-9]
b_7_3 = [1e-9, 1e-9]
a_7_4 = [-1., -1]
b_7_4 = [1., 1]
a_8_1 = [-1., -1]
b_8_1 = [1., 1]
a_8_2 = [-1., -1]
b_8_2 = [1., 1]
a_9_1 = [-1., -1]
b_9_1 = [1., 1]
a_9_2 = [-1., -1]
b_9_2 = [1., 1]
a_10_1 = [-1., -1]
b_10_1 = [1., 1]

as = [a_1_1, a_1_2, a_1_3, a_1_4, a_1_5, a_2_1, a_2_2, a_2_3, a_2_4, a_2_5, a_3_1, a_3_2, a_4_1, a_4_2, a_5_1, a_6_1, a_6_2, a_6_3, a_7_1, a_7_2, a_7_3, a_7_4, a_8_1, a_8_2, a_9_1, a_9_2, a_10_1]
bs = [b_1_1, b_1_2, b_1_3, b_1_4, b_1_5, b_2_1, b_2_2, b_2_3, b_2_4, b_2_5, b_3_1, b_3_2, b_4_1, b_4_2, b_5_1, b_6_1, b_6_2, b_6_3, b_7_1, b_7_2, b_7_3, b_7_4, b_8_1, b_8_2, b_9_1, b_9_2, b_10_1]

file_names = ["yroots_roots_1_1", "yroots_roots_1_2", "yroots_roots_1_3", "yroots_roots_1_4", "yroots_roots_1_5", "yroots_roots_2_1", "yroots_roots_2_2", "yroots_roots_2_3", "yroots_roots_2_4", "yroots_roots_2_5", "yroots_roots_3_1", "yroots_roots_3_2", "yroots_roots_4_1", "yroots_roots_4_2", "yroots_roots_5_1", "yroots_roots_6_1", "yroots_roots_6_2", "yroots_roots_6_3", "yroots_roots_7_1", "yroots_roots_7_2", "yroots_roots_7_3", "yroots_roots_7_4", "yroots_roots_8_1", "yroots_roots_8_2", "yroots_roots_9_1", "yroots_roots_9_2", "yroots_roots_10_1"]