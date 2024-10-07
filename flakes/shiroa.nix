{
  lib,
  stdenvNoCC,
  fetchurl,
  autoPatchelfHook,
  system,
  ...
}: let
  name = "shiroa";
  version = "0.2.0-nightly4";
  arch =
    {
      "aarch64-darwin" = "aarch64-apple-darwin";
      "aarch64-linux" = "aarch64-unknown-linux-gnu";
      "x86_64-darwin" = "x86_64-apple-darwin";
      "x86_64-linux" = "x86_64-unknown-linux-gnu";
    }
    .${system};
  sha256 =
    {
      "aarch64-darwin" = "0130gi1l1lv86jnfrjq877izisgvl4lpcak485v047zi6qq5w346";
      "aarch64-linux" = "13y3i8riapwvqra97c4rn3fshq1zx23hvwmjxb1nsxabsl7nh3iv";
      "x86_64-darwin" = "0kpzlcc7kxv5v48dnwlqchdc24qwjjyw6w8zf3m4w7hxdxvjrk5v";
      "x86_64-linux" = "01rfchg0i491fh19yi7z5y7cmkcbnn51s63l5j6ww8fw1gxizq45";
    }
    .${system};
  owner = "Myriad-Dreamin";
  repo = name;
  nativeBuildInputs = lib.optional stdenvNoCC.isLinux autoPatchelfHook;
in
  stdenvNoCC.mkDerivation {
    inherit name version;

    src = fetchurl {
      url = "https://github.com/${owner}/${repo}/releases/download/v${version}/${name}-${arch}.tar.gz";
      inherit sha256;
    };

    sourceRoot = ".";

    inherit nativeBuildInputs;

    installPhase = ''
      runHook preInstall
      install -Dm755 ${name}-${arch}/bin/${name} $out/bin/${name}
      runHook postInstall
    '';

    meta = with lib; {
      description = "shiroa (Shiro A, or The White, or 云笺) is a simple tool for creating modern online (cloud) books in pure typst.";
      homepage = "https://myriad-dreamin.github.io/shiroa/";
      license = licenses.asl20;
      inherit system;
    };
  }
