cd ~/android/lineage
export LINEAGE_DEV_CERTIFICATE=vendor/certs/releasekey
export LINEAGE_VERITY_CERTIFICATE=vendor/certs/verity
export USE_CCACHE=1
source build/envsetup.sh
lunch lineage_ruby-eng
croot
num_procs=$(nproc)
make -j$((num_procs - 0)) bacon |tee buildlog.txt
