  
;; remove gui elements
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; make cursor not blink
(blink-cursor-mode -1)

;; highlight line where cursor is
(global-hl-line-mode 1)

;; show mark
(global-visible-mark-mode 1)

;; remove annoying ass bell sound
(setq ring-bell-function 'ignore)

;; no startup message
(setq inhibit-startup-message 1)

;; dont wrap lines
(setq-default truncate-lines 1)


(setq eldoc-echo-area-use-multiline-p nil)

;; scrolling
(setq scroll-margin 3
      scroll-conservatively 101)
  
;; editing preferences
;; corfu
(use-package corfu
  :ensure t
  :custom
  (corfu-auto t)
  (corfu-cycle t)
  (corfu-auto-prefix 2)
  (corfu-auto-delay 0.0)
  :config
  (global-corfu-mode))

;; font
(set-face-attribute 'default nil
		    :family "Jetbrains Mono"
		    :height 100
		    :weight 'normal)

;; ugly ass autogenerated code
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7" "1f292969fc19ba45fbc6542ed54e58ab5ad3dbe41b70d8cb2d1f85c22d07e518" "93011fe35859772a6766df8a4be817add8bfe105246173206478a0706f88b33d" "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290" "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da" "b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a" "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f" "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443" "37b6695bae243145fa2dfb41440c204cd22833c25cd1993b0f258905b9e65577" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" "dfb1c8b5bfa040b042b4ef660d0aab48ef2e89ee719a1f24a4629a0c5ed769e8" "691d671429fa6c6d73098fc6ff05d4a14a323ea0a18787daeb93fde0e48ab18b" "38c0c668d8ac3841cb9608522ca116067177c92feeabc6f002a27249976d7434" "6f1f6a1a3cff62cc860ad6e787151b9b8599f4471d40ed746ea2819fcd184e1a" "d6b934330450d9de1112cbb7617eaf929244d192c4ffb1b9e6b63ad574784aad" "4e2e42e9306813763e2e62f115da71b485458a36e8b4c24e17a2168c45c9cf9d" "d77d6ba33442dd3121b44e20af28f1fae8eeda413b2c3d3b9f1315fbda021992" "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0" "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "b95f61aa5f8a54d494a219fcde9049e23e3396459a224631e1719effcb981dbd" "f5f80dd6588e59cfc3ce2f11568ff8296717a938edd448a947f9823a4e282b66" "5a00018936fa1df1cd9d54bee02c8a64eafac941453ab48394e2ec2c498b834a" "249e100de137f516d56bcf2e98c1e3f9e1e8a6dce50726c974fa6838fbfcec6b" "a131602c676b904a5509fff82649a639061bf948a5205327e0f5d1559e04f5ed" "c95813797eb70f520f9245b349ff087600e2bd211a681c7a5602d039c91a6428" "788121c96b7a9b99a6f35e53b7c154991f4880bb0046a80330bb904c1a85e275" "9cd57dd6d61cdf4f6aef3102c4cc2cfc04f5884d4f40b2c90a866c9b6267f2b3" "b5fab52f16546a15f171e6bd450ff11f2a9e20e5ac7ec10fa38a14bb0c67b9ab" "06ed754b259cb54c30c658502f843937ff19f8b53597ac28577ec33bb084fa52" "0170347031e5dfa93813765bc4ef9269a5e357c0be01febfa3ae5e5fcb351f09" "6128465c3d56c2630732d98a3d1c2438c76a2f296f3c795ebda534d62bb8a0e3" "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" "2ce76d65a813fae8cfee5c207f46f2a256bac69dacbb096051a7a8651aa252b0" "3c7a784b90f7abebb213869a21e84da462c26a1fda7e5bd0ffebf6ba12dbd041" "e266d44fa3b75406394b979a3addc9b7f202348099cfde69e74ee6432f781336" "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22" "8b148cf8154d34917dfc794b5d0fe65f21e9155977a36a5985f89c09a9669aa0" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "77fff78cc13a2ff41ad0a8ba2f09e8efd3c7e16be20725606c095f9a19c24d3d" "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9" "013728cb445c73763d13e39c0e3fd52c06eefe3fbd173a766bfd29c6d040f100" "f4d1b183465f2d29b7a2e9dbe87ccc20598e79738e5d29fc52ec8fb8c576fcfd" "6e33d3dd48bc8ed38fd501e84067d3c74dfabbfc6d345a92e24f39473096da3f" "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851" "4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "4990532659bb6a285fee01ede3dfa1b1bdf302c5c3c8de9fad9b6bc63a9252f7" "74e2ed63173b47d6dc9a82a9a8a6a9048d89760df18bc7033c5f91ff4d083e37" default))
 '(package-selected-packages
   '(eglot deadgrep visible-mark go-mode catppuccin disable-mouse eldoc-box corfu doom-themes vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'emacs-startup-hook
          (lambda ()
            (toggle-frame-maximized) ;; maximize
            (load-theme 'doom-gruvbox 1)
            (global-disable-mouse-mode 1)
            (vertico-mode 1)
            (setq gc-cons-threshold (expt 2 23)))) ;; Lower threshold back to 8 MiB (default is 800kB)
(put 'narrow-to-region 'disabled nil)