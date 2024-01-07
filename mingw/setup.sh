# Setup profile path
PROFILE_PATH=$MINGW_PREFIX/etc/profile.d
mkdir -p $PROFILE_PATH

# Rustup
echo "export PATH=\$PATH:/\$MINGW_PREFIX/.cargo/bin" > $PROFILE_PATH/rust.sh
echo "export PATH=\$PATH:/\$MINGW_PREFIX/.rustup/bin" >> $PROFILE_PATH/rust.sh
echo "export CARGO_HOME=\$MINGW_PREFIX/.cargo" >> $PROFILE_PATH/rust.sh
echo "export RUSTUP_HOME=\$MINGW_PREFIX/.rustup" >> $PROFILE_PATH/rust.sh

# VSCode
echo "export PATH=\$PATH:/c/Users/User/AppData/Local/Programs/Microsoft VS Code/bin" > $PROFILE_PATH/code.sh

# Finish
echo "Please execute"
echo "source /etc/profile"