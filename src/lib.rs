use zed_extension_api as zed;

struct SurfaceExtension {}

impl zed::Extension for SurfaceExtension {
    fn new() -> Self {
        Self {}
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        let path = worktree
            .which("surface-ls")
            .ok_or_else(|| "surfacels not installed.".to_string())?;

        Ok(zed::Command {
            command: path,
            args: vec!["--lowercase_intrinsics".to_string()],
            env: Default::default(),
        })
    }
}

zed::register_extension!(SurfaceExtension);
