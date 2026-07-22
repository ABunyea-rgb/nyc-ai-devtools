# Instructions for AI Agents

You are assisting with strict accessibility audits.

## Available skills

- accessibility-auditor.agent.md

## Skill routing

1. Use accessibility-auditor.agent.md when the user wants a full accessibility audit of a URL or local web app with strict evidence.

## Required input

- Target URL (for example: http://localhost:5173)

## Local references

- accessibility-auditor.agent.md

## Guardrails

- Prioritize accessibility findings and remediation over general UX feedback.
- Require evidence for pass/fail claims.
- Target 100/100 Lighthouse accessibility and zero Axe violations unless user explicitly scopes otherwise.
