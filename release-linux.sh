VERSION=1.0.2.0
rm -rf ./release-linux
mkdir release-linux

cp ./src/vlcd ./release-linux/
cp ./src/vlc-cli ./release-linux/
cp ./src/qt/vlc-qt ./release-linux/
cp ./VLCCOIN_small.png ./release-linux/

cd ./release-linux/
strip vlcd
strip vlc-cli
strip vlc-qt

#==========================================================
# prepare for packaging deb file.

mkdir vlccoin-$VERSION
cd vlccoin-$VERSION
mkdir -p DEBIAN
echo 'Package: vlccoin
Version: '$VERSION'
Section: base 
Priority: optional 
Architecture: all 
Depends:
Maintainer: Vlc
Description: Vlc coin wallet and service.
' > ./DEBIAN/control
mkdir -p ./usr/local/bin/
cp ../vlcd ./usr/local/bin/
cp ../vlc-cli ./usr/local/bin/
cp ../vlc-qt ./usr/local/bin/

# prepare for desktop shortcut
mkdir -p ./usr/share/icons/
cp ../VLCCOIN_small.png ./usr/share/icons/
mkdir -p ./usr/share/applications/
echo '
#!/usr/bin/env xdg-open

[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/local/bin/vlc-qt
Name=vlccoin
Comment= vlc coin wallet
Icon=/usr/share/icons/VLCCOIN_small.png
' > ./usr/share/applications/vlccoin.desktop

cd ../
# build deb file.
dpkg-deb --build vlccoin-$VERSION

#==========================================================
# build rpm package
rm -rf ~/rpmbuild/
mkdir -p ~/rpmbuild/{RPMS,SRPMS,BUILD,SOURCES,SPECS,tmp}

cat <<EOF >~/.rpmmacros
%_topdir   %(echo $HOME)/rpmbuild
%_tmppath  %{_topdir}/tmp
EOF

#prepare for build rpm package.
rm -rf vlccoin-$VERSION
mkdir vlccoin-$VERSION
cd vlccoin-$VERSION

mkdir -p ./usr/bin/
cp ../vlcd ./usr/bin/
cp ../vlc-cli ./usr/bin/
cp ../vlc-qt ./usr/bin/

# prepare for desktop shortcut
mkdir -p ./usr/share/icons/
cp ../VLCCOIN_small.png ./usr/share/icons/
mkdir -p ./usr/share/applications/
echo '
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/usr/bin/vlc-qt
Name=vlccoin
Comment= vlc coin wallet
Icon=/usr/share/icons/VLCCOIN_small.png
' > ./usr/share/applications/vlccoin.desktop
cd ../

# make tar ball to source folder.
tar -zcvf vlccoin-$VERSION.tar.gz ./vlccoin-$VERSION
cp vlccoin-$VERSION.tar.gz ~/rpmbuild/SOURCES/

# build rpm package.
cd ~/rpmbuild

cat <<EOF > SPECS/vlccoin.spec
# Don't try fancy stuff like debuginfo, which is useless on binary-only
# packages. Don't strip binary too
# Be sure buildpolicy set to do nothing

Summary: Vlc wallet rpm package
Name: vlccoin
Version: $VERSION
Release: 1
License: MIT
SOURCE0 : %{name}-%{version}.tar.gz
URL: https://www.vlccoin.net/

BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-root

%description
%{summary}

%prep
%setup -q

%build
# Empty section.

%install
rm -rf %{buildroot}
mkdir -p  %{buildroot}

# in builddir
cp -a * %{buildroot}


%clean
rm -rf %{buildroot}


%files
/usr/share/applications/vlccoin.desktop
/usr/share/icons/VLCCOIN_small.png
%defattr(-,root,root,-)
%{_bindir}/*

%changelog
* Tue Aug 24 2021  Vlc Project Team.
- First Build

EOF

rpmbuild -ba SPECS/vlccoin.spec



