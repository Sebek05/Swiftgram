load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

sgDeps = [
    "//Swiftgram/SGSimpleSettings:SGSimpleSettings",
    "//Swiftgram/SGInputToolbar:SGInputToolbar"
]


swift_library(
    name = "MessageInputPanelComponent",
    module_name = "MessageInputPanelComponent",
    srcs = glob([
        "Sources/**/*.swift",
    ]),
    copts = [
        "-warnings-as-errors",
    ],
    deps = sgDeps + [
        "//submodules/Display",
        "//submodules/ComponentFlow",
        "//submodules/AppBundle",
        "//submodules/TelegramCore",
        "//submodules/TelegramUI/Components/TextFieldComponent",
        "//submodules/Components/BundleIconComponent",
        "//submodules/TelegramUI/Components/ChatTextInputMediaRecordingButton",
        "//submodules/TelegramUI/Components/LottieComponent",
        "//submodules/AccountContext",
        "//submodules/TelegramPresentationData",
        "//submodules/ManagedAnimationNode",
        "//submodules/SSignalKit/SwiftSignalKit",
        "//submodules/Components/HierarchyTrackingLayer",
        "//submodules/TelegramUI/Components/AudioWaveformComponent",
        "//submodules/MediaPlayer:UniversalMediaPlayer",
        "//submodules/ChatContextQuery",
        "//submodules/TextFormat",
        "//submodules/TelegramUI/Components/Stories/PeerListItemComponent",
        "//submodules/TelegramUI/Components/MoreHeaderButton",
        "//submodules/TelegramUI/Components/EmojiSuggestionsComponent",
        "//submodules/TelegramUI/Components/EmojiTextAttachmentView",
        "//submodules/StickerPeekUI",
        "//submodules/Components/ReactionButtonListComponent",
        "//submodules/TelegramUI/Components/AnimatedTextComponent",
        "//submodules/AnimatedCountLabelNode",
        "//submodules/TelegramUI/Components/MessageInputActionButtonComponent",
        "//submodules/SearchPeerMembers",
        "//submodules/ContextUI",
        "//submodules/TelegramUI/Components/ContextReferenceButtonComponent",
        "//submodules/TelegramUI/Components/Stories/ForwardInfoPanelComponent",
        "//submodules/TelegramUI/Components/PlainButtonComponent",
    ],
    visibility = [
        "//visibility:public",
    ],
)
