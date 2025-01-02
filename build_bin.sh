cd build

rm -rf *

cmake -DPCB=STM32H7S78_DK -DPCBREV=stm32h7s78-dk -DCMAKE_BUILD_TYPE=Release ../

make configure

make -j`nproc` firmware


export EDGETX_VERSION_SUFFIX=RM-Build

cmake -LAH ../

make clean
cmake -DPCB=X7 -DPCBREV=GX12 -DCMAKE_BUILD_TYPE=Release ../
make configure
make -j`nproc` firmware
mv ./arm-none-eabi/firmware.bin ./edgetx_GX12_en_v2.10.3.bin
