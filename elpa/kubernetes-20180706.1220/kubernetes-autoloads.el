;;; kubernetes-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "kubernetes-commands" "kubernetes-commands.el"
;;;;;;  (23551 4249 218786 800000))
;;; Generated autoloads from kubernetes-commands.el

(autoload 'kubernetes-mark-for-delete "kubernetes-commands" "\
Mark the thing at POINT for deletion, then advance to the next line.

\(fn POINT)" t nil)

(autoload 'kubernetes-unmark "kubernetes-commands" "\
Unmark the thing at POINT, then advance to the next line.

\(fn POINT)" t nil)

(autoload 'kubernetes-unmark-all "kubernetes-commands" "\
Unmark everything in the buffer.

\(fn)" t nil)

(autoload 'kubernetes-execute-marks "kubernetes-commands" "\
Action all marked items in the buffer.

\(fn)" t nil)

(autoload 'kubernetes-copy-thing-at-point "kubernetes-commands" "\
Perform a context-sensitive copy action.

Inspects the `kubernetes-copy' text property at POINT to determine
what to copy.

\(fn POINT)" t nil)

(autoload 'kubernetes-refresh "kubernetes-commands" "\
Force Kubernetes buffers to redraw.

With optional argument VERBOSE, log status changes.

\(fn &optional VERBOSE)" t nil)

(autoload 'kubernetes-navigate "kubernetes-commands" "\
Perform a context-sensitive navigation action.

STATE is the current application state.

Inspecs the `kubernetes-nav' text property at POINT to determine
how to navigate.  If that property is not found, attempt to toggle
the magit section at point.

\(fn POINT STATE)" t nil)

(autoload 'kubernetes-describe-dwim "kubernetes-commands" "\
Describe the thing at point.

THING must be a valid target for `kubectl describe'.

\(fn THING)" t nil)

(autoload 'kubernetes-describe-pod "kubernetes-commands" "\
Display a buffer for describing a pod.

POD-NAME is the name of the pod to describe.

\(fn POD-NAME)" t nil)

(autoload 'kubernetes-exec-into "kubernetes-commands" "\
Open a terminal for execting into a pod.

POD-NAME is the name of the pod to exec into.

ARGS are additional args to pass to kubectl.

EXEC-COMMAND is the command to run in the container.

STATE is the current application state.

Should be invoked via command `kubernetes-logs-popup'.

\(fn POD-NAME ARGS EXEC-COMMAND STATE)" t nil)

(autoload 'kubernetes-set-namespace "kubernetes-commands" "\
Set the namespace to query to NS.

Overrides the namespace settings for the current context.

STATE is the current application state.

\(fn NS STATE)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-configmaps" "kubernetes-configmaps.el"
;;;;;;  (23551 4249 190818 300000))
;;; Generated autoloads from kubernetes-configmaps.el

(autoload 'kubernetes-display-configmap "kubernetes-configmaps" "\
Display information for a configmap in a new window.

STATE is the current application state.

CONFIGMAP-NAME is the name of the configmap to display.

\(fn CONFIGMAP-NAME STATE)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-contexts" "kubernetes-contexts.el"
;;;;;;  (23551 4249 202783 900000))
;;; Generated autoloads from kubernetes-contexts.el

(autoload 'kubernetes-display-config "kubernetes-contexts" "\
Display information for CONFIG in a new window.

\(fn CONFIG)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-deployments" "kubernetes-deployments.el"
;;;;;;  (23551 4249 291778 300000))
;;; Generated autoloads from kubernetes-deployments.el

(autoload 'kubernetes-display-deployment "kubernetes-deployments" "\
Display information for a deployment in a new window.

STATE is the current application state.

DEPLOYMENT-NAME is the name of the deployment to display.

\(fn DEPLOYMENT-NAME STATE)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-jobs" "kubernetes-jobs.el" (23551
;;;;;;  4249 259782 100000))
;;; Generated autoloads from kubernetes-jobs.el

(autoload 'kubernetes-display-job "kubernetes-jobs" "\
Display information for a job in a new window.

STATE is the current application state.

JOB-NAME is the name of the job to display.

\(fn JOB-NAME STATE)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-labels" "kubernetes-labels.el"
;;;;;;  (23551 4249 243788 500000))
;;; Generated autoloads from kubernetes-labels.el

(autoload 'kubernetes-show-pods-for-label "kubernetes-labels" "\
Display a buffer for pods matching a label.

LABEL-QUERY is a string used to match pods.

\(fn LABEL-QUERY)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-logs" "kubernetes-logs.el" (23551
;;;;;;  4249 227783 400000))
;;; Generated autoloads from kubernetes-logs.el

(autoload 'kubernetes-logs-inspect-line "kubernetes-logs" "\
Show detail for the log line at POS.

\(fn POS)" t nil)

(autoload 'kubernetes-logs-previous-line "kubernetes-logs" "\
Move backward and inspect the line at point.

\(fn)" t nil)

(autoload 'kubernetes-logs-forward-line "kubernetes-logs" "\
Move forward and inspect the line at point.

\(fn)" t nil)

(autoload 'kubernetes-logs-follow "kubernetes-logs" "\
Open a streaming logs buffer for a pod.

POD-NAME is the name of the pod to log.

ARGS are additional args to pass to kubectl.

STATE is the current application state.

\(fn POD-NAME ARGS STATE)" t nil)

(autoload 'kubernetes-logs-fetch-all "kubernetes-logs" "\
Open a streaming logs buffer for POD.

POD-NAME is the name of the pod to log.

ARGS are additional args to pass to kubectl.

STATE is the current application state

\(fn POD-NAME ARGS STATE)" t nil)

(defvar kubernetes-logs-mode-map (let ((keymap (make-sparse-keymap))) (define-key keymap (kbd "n") #'kubernetes-logs-forward-line) (define-key keymap (kbd "p") #'kubernetes-logs-previous-line) (define-key keymap (kbd "RET") #'kubernetes-logs-inspect-line) keymap) "\
Keymap for `kubernetes-logs-mode'.")

(autoload 'kubernetes-logs-mode "kubernetes-logs" "\
Mode for displaying and inspecting Kubernetes logs.

\\<kubernetes-logs-mode-map>Type \\[kubernetes-logs-inspect-line] to open the line at point in a new buffer.

\\{kubernetes-logs-mode-map}

\(fn)" t nil)

(defvar kubernetes-log-line-mode-map (let ((keymap (make-sparse-keymap))) (define-key keymap (kbd "n") #'kubernetes-logs-forward-line) (define-key keymap (kbd "p") #'kubernetes-logs-previous-line) keymap) "\
Keymap for `kubernetes-log-line-mode'.")

(autoload 'kubernetes-log-line-mode "kubernetes-logs" "\
Mode for inspecting Kubernetes log lines.

\\{kubernetes-log-line-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-modes" "kubernetes-modes.el" (23551
;;;;;;  4249 282782 900000))
;;; Generated autoloads from kubernetes-modes.el

(autoload 'kubernetes-display-thing-mode "kubernetes-modes" "\
Mode for inspecting a Kubernetes object.

\\{kubernetes-display-thing-mode-map}

\(fn)" t nil)

(defvar kubernetes-mode-map (let ((keymap (make-sparse-keymap))) (define-key keymap (kbd "p") #'magit-section-backward) (define-key keymap (kbd "n") #'magit-section-forward) (define-key keymap (kbd "M-p") #'magit-section-backward-sibling) (define-key keymap (kbd "M-n") #'magit-section-forward-sibling) (define-key keymap (kbd "C-i") #'magit-section-toggle) (define-key keymap (kbd "^") #'magit-section-up) (define-key keymap [tab] #'magit-section-toggle) (define-key keymap [C-tab] #'magit-section-cycle) (define-key keymap [M-tab] #'magit-section-cycle-diffs) (define-key keymap [S-tab] #'magit-section-cycle-global) (define-key keymap (kbd "q") #'quit-window) (define-key keymap (kbd "RET") #'kubernetes-navigate) (define-key keymap (kbd "M-w") #'kubernetes-copy-thing-at-point) (define-key keymap (kbd "h") #'describe-mode) (define-key keymap (kbd "?") #'kubernetes-overview-popup) (define-key keymap (kbd "c") #'kubernetes-config-popup) (define-key keymap (kbd "d") #'kubernetes-describe-popup) (define-key keymap (kbd "D") #'kubernetes-mark-for-delete) (define-key keymap (kbd "e") #'kubernetes-exec-popup) (define-key keymap (kbd "g") #'kubernetes-refresh) (define-key keymap (kbd "l") #'kubernetes-logs-popup) (define-key keymap (kbd "L") #'kubernetes-labels-popup) (define-key keymap (kbd "u") #'kubernetes-unmark) (define-key keymap (kbd "U") #'kubernetes-unmark-all) (define-key keymap (kbd "x") #'kubernetes-execute-marks) keymap) "\
Keymap for `kubernetes-mode'.  This is the base keymap for all derived modes.")

(autoload 'kubernetes-mode "kubernetes-modes" "\
Base mode for Kubernetes modes.

\\{kubernetes-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-namespaces" "kubernetes-namespaces.el"
;;;;;;  (23551 4249 275784 800000))
;;; Generated autoloads from kubernetes-namespaces.el

(autoload 'kubernetes-display-namespace "kubernetes-namespaces" "\
Display information for a namespace in a new window.

STATE is the current application state.

NAMESPACE-NAME is the name of the namespace to display.

\(fn NAMESPACE-NAME STATE)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-overview" "kubernetes-overview.el"
;;;;;;  (23551 4249 209780 400000))
;;; Generated autoloads from kubernetes-overview.el

(autoload 'kubernetes-overview-mode "kubernetes-overview" "\
Mode for working with Kubernetes overview.

\\<kubernetes-overview-mode-map>Type \\[kubernetes-overview-set-sections] to choose which resources to display.

Type \\[kubernetes-mark-for-delete] to mark an object for deletion, and \\[kubernetes-execute-marks] to execute.
Type \\[kubernetes-unmark] to unmark the object at point, or \\[kubernetes-unmark-all] to unmark all objects.

Type \\[kubernetes-navigate] to inspect the object on the current line.

Type \\[kubernetes-copy-thing-at-point] to copy the thing at point.

Type \\[kubernetes-refresh] to refresh the buffer.

\\{kubernetes-overview-mode-map}

\(fn)" t nil)

(autoload 'kubernetes-overview "kubernetes-overview" "\
Display an overview buffer for Kubernetes.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-pods" "kubernetes-pods.el" (23551
;;;;;;  4249 247786 700000))
;;; Generated autoloads from kubernetes-pods.el

(autoload 'kubernetes-display-pod "kubernetes-pods" "\
Display information for a pod in a new window.

STATE is the current application state.

POD-NAME is the name of the pod to display.

\(fn POD-NAME STATE)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-secrets" "kubernetes-secrets.el"
;;;;;;  (23551 4249 180783 900000))
;;; Generated autoloads from kubernetes-secrets.el

(autoload 'kubernetes-display-secret "kubernetes-secrets" "\
Display information for a secret in a new window.

STATE is the current application state.

SECRET-NAME is the name of the secret to display.

\(fn SECRET-NAME STATE)" t nil)

;;;***

;;;### (autoloads nil "kubernetes-services" "kubernetes-services.el"
;;;;;;  (23551 4249 252787 500000))
;;; Generated autoloads from kubernetes-services.el

(autoload 'kubernetes-display-service "kubernetes-services" "\
Display information for a service in a new window.

STATE is the current application state.

SERVICE-NAME is the name of the service to display.

\(fn SERVICE-NAME STATE)" t nil)

;;;***

;;;### (autoloads nil nil ("kubernetes-ast.el" "kubernetes-errors.el"
;;;;;;  "kubernetes-kubectl.el" "kubernetes-loading-container.el"
;;;;;;  "kubernetes-pkg.el" "kubernetes-pod-line.el" "kubernetes-popups.el"
;;;;;;  "kubernetes-process.el" "kubernetes-props.el" "kubernetes-state.el"
;;;;;;  "kubernetes-timers.el" "kubernetes-utils.el" "kubernetes-vars.el"
;;;;;;  "kubernetes-yaml.el" "kubernetes.el") (23551 4249 287794
;;;;;;  400000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; kubernetes-autoloads.el ends here
