-- ============================================================
-- 9. STUDENT AUDIT LOG
--    Stores INSERT / UPDATE / DELETE history
-- ============================================================

CREATE TABLE student_audit_logs (
    audit_id        BIGSERIAL PRIMARY KEY,
    student_id      INTEGER NOT NULL,
    action          VARCHAR(20) NOT NULL,
    changed_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    changed_by      VARCHAR(100) NOT NULL,
    CONSTRAINT fk_student_audit
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON DELETE CASCADE,

    CONSTRAINT chk_audit_action
        CHECK (action IN ('INSERT', 'UPDATE', 'DELETE'))
);