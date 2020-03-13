onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib heart_coe_opt

do {wave.do}

view wave
view structure
view signals

do {heart_coe.udo}

run -all

quit -force